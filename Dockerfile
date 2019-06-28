FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y python-pip ffmpeg
RUN pip install youtube_dl
COPY ./youtube-mp3.py /youtube-mp3.py
ENTRYPOINT ["python", "/youtube-mp3.py"]
