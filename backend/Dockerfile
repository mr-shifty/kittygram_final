FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
COPY entrypoint.sh /usr/bin/entrypoint.sh

RUN pip install --upgrade pip
RUN pip install -r requirements.txt --no-cache-dir
RUN chmod +x /usr/bin/entrypoint.sh

COPY . .

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]