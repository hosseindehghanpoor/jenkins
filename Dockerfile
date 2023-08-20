FROM python:3.9-slim
WORKDIR /app
COPY . .
RUN ["pip3", "install", "-r", "requirements.txt"]
ENTRYPOINT ["python3", "manage.py", "runserver 0.0.0.0:8000"]
