FROM python:3.12-slim
WORKDIR /app
COPY main.py .
COPY requirements.txt .
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir -r requirements.txt
RUN chmod +x main.py
CMD ["python", "main.py"]
