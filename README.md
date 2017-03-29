
[![Build Status](https://travis-ci.org/sdoro/ES2012.svg?branch=master)](https://travis-ci.org/sdoro/ES2012)

[![Coverage Status](https://coveralls.io/repos/github/sdoro/ES2012/badge.svg?branch=master)](https://coveralls.io/github/sdoro/ES2012?branch=master)

### 01. create & setup virtualenv

    echo "*.py[cod]" > .gitignore
    sudo pip install virtualenv
    echo "Django==1.10.6" > requirements.txt
    virtualenv $HOME/10.6
    source $HOME/10.6/bin/activate
    pip install -r requirements.txt

### 02. make project and app

    django-admin startproject es2012
    cd es2012
    ./manage.py startapp app01

### 03. using Travis CI to run an elementary test

    # edit shows/tests.py
    > ../.travis.yml
    # edit ../.travis.yml
    # go to travis-ci.org and synce repos and enable ES2012

### 04. makemigrations

    # edit es2012/settings.py   add es2012-sdoro.c9users.io into ALLOWED_HOSTS
    # edit es2012/settings.py   add app01.apps.App01Config into INSTALLED_APPS
    # edit shows/models.py (add materiali)
    ./manage.py makemigrations
    ./manage.py migrate app01
    # edit app01/models.py (add azienda)
    ./manage.py makemigrations
    ./manage.py migrate app01
    # edit app01/models.py (add funzionari)
    ./manage.py makemigrations
    ./manage.py migrate app01
    # edit app01/models.py (add immobile)
    ./manage.py makemigrations
    ./manage.py migrate app01
    # edit app01/models.py (add pratica)
    ./manage.py makemigrations
    ./manage.py migrate app01
    # edit app01/models.py (add schedaimmobile)
    ./manage.py makemigrations
    ./manage.py migrate app01
    # verify original SQL with ./manage.py sqlmigrate app01 000{0-7}
    ./manage.py migrate app01

### 05. populate and make fixtures

    sqlite3 db.sqlite3 < ../data.sql 
    ./manage.py dumpdata app01 --indent 2 -o app01/fixtures/populate.json

### 06. re-populate database using fixtures

    rm db.sqlite3 app01/migrations/000*
    ./manage.py makemigrations
    ./manage.py migrate
    ./manage.py loaddata app01/fixtures/populate.json 

### 07. implementation of query #1

    # add __str__ to models
    > app01/urls.py
    # edit app01/urls.py
    # edit app01/views.py
    # edit es2012/urls.py
    echo "python-dateutil" >> ../requirements.txt
