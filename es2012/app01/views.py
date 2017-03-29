from django.shortcuts import render

from django.http import HttpResponse

from app01.models import Materiali, Azienda, Funzionari, Immobile, Pratica, Schedaimmobile

from datetime import date
from dateutil.relativedelta import relativedelta
from django.utils import timezone

def q1(request):
    p1 = Pratica.objects.filter(chiusuraprat__isnull=True,apertprat__lte=(timezone.now()-relativedelta(years=1)))
    html = ""
    for p in p1:
        print p.codprat, p.apertprat, p.codfunz, p.codimm
        html=html+"<br>"+p.codprat+", "+str(p.apertprat)+", "+str(p.codfunz)+", "+str(p.codimm)
    #html = "<html><body>Welcome</body></html>"
    return HttpResponse(html)