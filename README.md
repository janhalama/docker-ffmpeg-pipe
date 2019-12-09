# ffmpeg-pipe
Docker image comes with installed FFmpeg. FFmpeg is configured to stream video from ENV $INPUT_STREAM to $OUTPUT_STREAM no video stream conversions are applied.

Built on Alpine Linux.

* ffmpeg 4.2.1

[![Docker Stars](https://img.shields.io/docker/stars/janhalama/ffmpeg-pipe.svg)](https://hub.docker.com/r/janhalama/ffmpeg-pipe/)
[![Docker Pulls](https://img.shields.io/docker/pulls/janhalama/ffmpeg-pipe.svg)](https://hub.docker.com/r/janhalama/ffmpeg-pipe/)
[![Docker Automated build](https://img.shields.io/docker/automated/janhalama/ffmpeg-pipe.svg)](https://hub.docker.com/r/janhalama/ffmpeg-pipe/builds/)
[![Build Status](https://travis-ci.org/janhalama/docker-ffmpeg-pipe.svg?branch=master)](https://travis-ci.org/janhalama/docker-ffmpeg-pipe)

## Build
To build Docker image use following command:
```
docker build -t ffmpeg-pipe .
```

## Usage

### Run standalone ffmpeg video pipe
* Clone repo
* Pull docker image
* Run docker
```
git clone https://github.com/janhalama/docker-ffmpeg-pipe.git
cd docker-ffmpeg-pipe
docker pull janhalama/ffmpeg-pipe
docker run -it -e "INPUT_STREAM=<your input stream (rtsp,...)>" -e "OUTPUT_STREAM=<your output rtmp stream>"
```

### Example integration with nginx-rtmp docker service
* Clone repo
* Run docker compose script
```
git clone https://github.com/janhalama/docker-ffmpeg-pipe.git
cd docker-ffmpeg-pipe
docker-compose up
```
* Now HLS stream is available on http:\\localhost:80\live\test

## Resources
* https://www.ffmpeg.org
* https://alpinelinux.org/
* https://github.com/alfg/docker-nginx-rtmp