#!/bin/bash

# Запуск миграций
python manage.py migrate

# Сборка статики
python manage.py collectstatic

# Копирование статики в папку с контейнером nginx
cp -r /app/collected_static/. /kittygram_backend_static/static/

# Запуск сервера
exec "$@"

# gunicorn --bind 0.0.0.0:9000 kittygram_backend.wsgi