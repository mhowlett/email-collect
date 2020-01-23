#!/bin/bash

docker run -d --name email-landing \
    -p localhost:7979:7979 \
    -v ~/git/email-landing/:/config/ \
    landing:1 \
    nginx -c /config/nginx.conf
