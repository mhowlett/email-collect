#!/bin/bash

docker run -it --name email-landing \
    -p 127.0.0.1:7979:7979 \
    -v /git/prelaunch-landing/append-email:/src/ \
    -v /data/prelaunch-landing:/data/ \
    landing:1 \
    bash
