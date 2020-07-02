#!/bin/bash
python manage.py makemigrations --noinput 
daphne dlabs_demo.asgi:application --port 8000 --bind 0.0.0.0 -v 2