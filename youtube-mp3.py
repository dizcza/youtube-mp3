from __future__ import unicode_literals
import youtube_dl
import argparse
from pathlib import Path
import tempfile

parser = argparse.ArgumentParser()
parser.add_argument("url", help="youtube video url")
args = parser.parse_args()
archive_txt = str(Path(tempfile.gettempdir()) / "youtube_archive.txt")

ydl_opts = {
    'outtmpl': "~/Downloads/%(title)s.%(ext)s",
    'format': 'bestaudio/best',
    'download_archive': archive_txt,
    'postprocessors': [{
        'key': 'FFmpegExtractAudio',
        'preferredcodec': 'mp3',
        'preferredquality': '320',
    }],
}
with youtube_dl.YoutubeDL(ydl_opts) as ydl:
    ydl.download(args.url.split())
