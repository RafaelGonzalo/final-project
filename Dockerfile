FROM python:3.11-slim

WORKDIR /app

# Copy requirements from app/ directory
COPY app/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app directory
COPY app/ .

ENV PYTHONUNBUFFERED=1
ENV FLASK_DEBUG=False
ENV FLASK_APP=app.py

EXPOSE 8080

CMD ["python", "app.py"]