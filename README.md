You _don't_ need to download this repo to use **youtube-mp3** downloader!

Prerequisite steps:

1. [Install docker](https://gist.github.com/dizcza/264e3a793d81d23439c1a709eb46f11e).
2. Append the following line to your `~/.bashrc` (Linux) or `~/.bash_profile` (Mac OS):

`alias youtube-mp3="docker run --rm -v $HOME/Downloads:/root/Downloads dizcza/youtube-mp3 $1"`

3. `source ~/.bashrc` to save the new alias.

Usage

`youtube-mp3 <youtube_url>`

Example

`youtube-mp3 https://www.youtube.com/watch?v=7fD5hz8bHtU`

Output:

```
[download] Destination: ~/Downloads/Nadishana_Manu_Delago_Loup_Barrow_Thomas_Bloch_hang_crystal_organ_LOCUS_SOLUS_Orchestra.webm
[download] 100% of 10.51MiB in 00:0079MiB/s ETA 00:004
[ffmpeg] Destination: ~/Downloads/Nadishana_Manu_Delago_Loup_Barrow_Thomas_Bloch_hang_crystal_organ_LOCUS_SOLUS_Orchestra.mp3
```

Check-out your `~/Downloads` folder.
