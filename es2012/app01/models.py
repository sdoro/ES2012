from __future__ import unicode_literals

from django.db import models

#CREATE TABLE materiali (
#        sigla varchar PRIMARY KEY,
#        nome varchar (20) NOT NULL,
#        potcancerogeno boolean,
#        cancerogeno boolean,
#        fuorilegge boolean
#);

class Materiali(models.Model):
    sigla =  models.CharField(max_length=100, primary_key=True)
    nome = models.CharField(max_length=20, null=True)
    potcancerogeno =  models.BooleanField()
    cancerogeno =  models.BooleanField()
    fuorilegge =  models.BooleanField()

#CREATE TABLE azienda (
#        numero varchar PRIMARY KEY,
#        indirizzo varchar (100) NOT NULL,
#        email varchar (30) NOT NULL,
#        fax varchar (20) NOT NULL
#);

class Azienda(models.Model):
    numero = models.CharField(max_length=100, primary_key=True)
    indirizzo = models.CharField(max_length=100)
    email = models.CharField(max_length=30)
    fax = models.CharField(max_length=20)

#CREATE TABLE funzionari (
#        codfisc varchar PRIMARY KEY,
#        nome varchar (20) NOT NULL,
#        cognome varchar (20) NOT NULL,
#        password varchar (20) NOT NULL
#);

class Funzionari(models.Model):
    codfisc = models.CharField(max_length=11, primary_key=True)
    nome = models.CharField(max_length=20)
    cognome = models.CharField(max_length=20)
    password = models.CharField(max_length=20)

#CREATE TABLE immobile (
#        codimm varchar PRIMARY KEY,
#        indirizzo varchar (100),
#        comune varchar (30),
#        numaz varchar (10) REFERENCES azienda(numero)
#);

class Immobile(models.Model):
    codimm = models.CharField(max_length=100, primary_key=True)
    indirizzo = models.CharField(max_length=100)
    comune = models.CharField(max_length=30)
    numaz = models.ForeignKey('Azienda')

#CREATE TABLE pratica (
#        codprat varchar PRIMARY KEY,
#        apertprat date,
#        primsoll date,
#        rispprimsoll date,
#        secsoll date,
#        inizlavori date,
#        finlavori date,
#        collaudo date,
#        esitcoll varchar (20),
#        chiusuraprat date,
#        codfunz varchar REFERENCES funzionari(codfisc),
#        codimm varchar(10) REFERENCES immobile(codimm)
#);

class Pratica(models.Model):
    codprat = models.CharField(max_length=100, primary_key=True)
    apertprat = models.DateField(null = True)
    primsoll = models.DateField(null = True)
    rispprimsoll = models.DateField(null = True)
    secsoll = models.DateField(null = True)
    inizlavori = models.DateField(null = True)
    finlavori = models.DateField(null = True)
    collaudo = models.DateField(null = True)
    esitcoll = models.CharField(max_length=20)
    chiusuraprat = models.DateField(null = True)
    codfunz = models.ForeignKey('app01.Funzionari')
    codimm = models.ForeignKey('app01.Immobile')

#CREATE TABLE schedaimmobile (
#        id SERIAL PRIMARY KEY,
#        codimm varchar REFERENCES immobile(codimm),
#        codmat varchar REFERENCES materiali(sigla)
#);

class Schedaimmobile(models.Model):
    codimm = models.ForeignKey('app01.Immobile')
    codmat = models.ForeignKey('app01.Materiali')
