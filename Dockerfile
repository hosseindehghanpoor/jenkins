FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN ["pip3", "install", "-r", "requirements.txt"]
COPY . .
RUN ["ls", "-la"]
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]
EXPOSE 8000
