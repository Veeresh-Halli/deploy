FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN python manage.py collectstatic --noinput

CMD ["gunicorn", "deploy.wsgi:application", "--bind", "0.0.0.0:8000"]