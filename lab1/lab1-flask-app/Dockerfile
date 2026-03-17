FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y curl vim && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

RUN useradd -u 1000 appuser
USER appuser

EXPOSE 5000

ENV FLASK_ENV=production

CMD ["python", "app.py"]
