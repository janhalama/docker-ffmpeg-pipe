# ffmpeg-pipe
Docker image comes with installed FFmpeg. FFmpeg is configured to stream video from ENV $INPUT_STREAM to $OUTPUT_STREAM no video stream conversions are applied.

Built on Alpine Linux.

* ffmpeg 4.2.1

[![Docker Stars](https://img.shields.io/docker/stars/janhalama/rtsp-to-hls.svg)](https://hub.docker.com/r/janhalama/ffmpeg-pipe/)
[![Docker Pulls](https://img.shields.io/docker/pulls/janhalama/rtsp-to-hls.svg)](https://hub.docker.com/r/janhalama/ffmpeg-pipe/)
[![Docker Automated build](https://img.shields.io/docker/automated/janhalama/rtsp-to-hls.svg)](https://hub.docker.com/r/janhalama/ffmpeg-pipe/builds/)
[![Build Status](https://travis-ci.org/janhalama/docker-rtsp-to-hls.svg?branch=master)](https://travis-ci.org/janhalama/ffmpeg-pipe)

## Build
To build Docker image use following command:
```
docker build -t ffmpeg-pipe .
```

## Usage

### Server
* Pull docker image and run:
```
docker pull janhalama/ffmpeg-pipe
docker run -it -e "INPUT_STREAM=<your input stream (rtsp,...)>" -e "OUTPUT_STREAM=<your output rtmp stream>"
```

### Integrate with nginx-rtmp docker
* configure OUTPUT_STREAM to your nginx-rtmp (see: https://github.com/alfg/docker-nginx-rtmp) instance to expose your video in HLS format


## Resources
* https://www.ffmpeg.org
* https://alpinelinux.org/
* https://github.com/alfg/docker-nginx-rtmp