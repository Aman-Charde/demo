sudo apt install docker.io

mkdir dockerproject
cd dockerproject

nano app.py
nano Dockerfile 


FROM python:3.11-slim

WORKDIR /app

COPY app.py .

CMD ["python", "app.py"]


sudo docker build -t myapp .
sudo docker images
sudo docker run myapp
