FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y python-pip libav-tools
RUN pip install youtube_dl
COPY ./youtube-mp3.py /youtube-mp3.py
ENTRYPOINT ["python", "/youtube-mp3.py"]
