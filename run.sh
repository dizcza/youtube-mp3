#!/bin/bash
pip3 install --upgrade --force-reinstall "git+https://github.com/ytdl-org/youtube-dl.git"
python3 /youtube-mp3.py $1
