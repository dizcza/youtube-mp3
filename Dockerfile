FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y python3-pip ffmpeg git
COPY ./youtube-mp3.py /youtube-mp3.py
COPY ./run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
