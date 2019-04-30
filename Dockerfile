# ffmpeg - http://ffmpeg.org/download.html
#
# From https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu
#
# https://hub.docker.com/r/jrottenberg/ffmpeg/
#
#
FROM        ubuntu:18.04

WORKDIR     /tmp/workdir

RUN     apt-get -yqq update && \
        apt-get --no-install-recommends -yqq install gnuplot && \
        rm -rf /var/lib/apt/lists/*

MAINTAINER  Colin McFadden <mcfa0086@umn.edu>

ENTRYPOINT  ["gnuplot"]

