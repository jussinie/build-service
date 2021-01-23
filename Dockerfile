FROM ubuntu:latest

WORKDIR /build_service

COPY build_service.sh . 

RUN chmod +x /build_service/build_service.sh && \
    apt-get update && \
    apt-get install git docker.io -y

VOLUME /var/run/docker.sock:/var/run/docker.sock

CMD ./build_service.sh