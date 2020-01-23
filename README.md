

A small service for collecting email addresses, built using rust.

To build the docker file:

```
docker build -t landing:1 .
```

To run the service:

```
docker-up.sh
```

the body of requests POSTed to port 7979 will be appended to /data/emails.txt
