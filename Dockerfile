FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
RUN ["pip3", "install", "-r", "requirements.txt"]
COPY . .
RUN ["ls", "-la"]
EXPOSE 8000
