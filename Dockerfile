FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install --assume-yes curl ca-certificates build-essential
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rs.sh
RUN chmod a+x rs.sh
RUN ./rs.sh -y
