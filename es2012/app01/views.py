from django.shortcuts import render

from django.http import HttpResponse

from app01.models import Materiali, Azienda, Funzionari, Immobile, Pratica, Schedaimmobile

from datetime import date
from dateutil.relativedelta import relativedelta
from django.utils import timezone

def q1(request):
    p1 = Pratica.objects.filter(chiusuraprat__isnull=True,apertprat__lte=(timezone.now()-relativedelta(years=1)))
    html = '''<table style="width:50%">
  <tr>
    <th align="left">codice pratica</th>
    <th align="left">apertura il</th> 
    <th align="left">codice f.</th>
    <th align="left">codice i.</th>
  </tr>'''
  
    for p in p1:
        #print p.codprat, p.apertprat, p.codfunz, p.codimm
        html+="\n<tr>" + \
          "\n\t<td>"+p.codprat+"</td>" + \
          "\n\t<td>"+str(p.apertprat)+"</td>" + \
          "\n\t<td>"+str(p.codfunz)+"</td>" + \
          "\n\t<td>"+str(p.codimm)+"</td>" + \
          "\n</tr>"
    html+="\n</table>"
    return HttpResponse(html)

def q1t(request):
  p1 = Pratica.objects.filter(chiusuraprat__isnull=True,apertprat__lte=(timezone.now()-relativedelta(years=1)))
  query = []
  for p in p1:
    query.append({'cp': p.codprat, 'ap': str(p.apertprat), 'cf': str(p.codfunz), 'ci': str(p.codimm) })
  return render(request, 'estesa.html', {'q1t': query})
