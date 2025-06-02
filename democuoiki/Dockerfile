FROM python:3.11
WORKDIR /app
RUN apt-get update && apt-get install -y libpq-dev libcairo2-dev libpango1.0-dev zlib1g-dev libffi-dev libjpeg-dev
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
CMD ["gunicorn", "app:app"]