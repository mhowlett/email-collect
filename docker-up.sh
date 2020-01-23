#!/bin/bash

docker run -d --name email-landing \
    -p localhost:7979:7979 \
    -v ~/git/email-landing/:/config/ \
    nginx:1.17.8 \
    nginx -c /config/nginx.conf
