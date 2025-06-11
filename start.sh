#!/bin/bash
set -e

# Run migrations just in case (optional)
python manage.py migrate

# Run your custom management command
python manage.py create_admin

# Start Gunicorn server
exec gunicorn Axis.wsgi:application --bind 0.0.0.0:8888
