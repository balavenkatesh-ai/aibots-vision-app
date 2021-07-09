FROM python:3.8-slim-buster
COPY . /app
WORKDIR /app
RUN apt-get update
RUN apt install libgl1-mesa-glx -y
RUN apt-get install 'ffmpeg'\
    'libsm6'\
    'libxext6'  -y
RUN pip install -r requirements.txt
RUN chmod +x startup.sh
ENTRYPOINT ["./startup.sh"]