
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
