FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y python-pip libav-tools
WORKDIR /youtube-mp3
COPY . /youtube-mp3
RUN pip install -r requirements.txt
