FROM python:3.12-slim

WORKDIR /app

COPY test.txt .
COPY test.py .

CMD ["python", "test.py"]