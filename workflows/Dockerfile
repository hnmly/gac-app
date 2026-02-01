FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN apt-get update && \
    apt-get install -y curl && \
    pip install --no-cache-dir -r requirements.txt && \
    rm -rf /var/lib/apt/lists/*

COPY main.py .

CMD ["python", "main.py"]
