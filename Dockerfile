FROM python:3.9-slim
WORKDIR /app
copy app.py .

CMD ["python", "app.py"]
