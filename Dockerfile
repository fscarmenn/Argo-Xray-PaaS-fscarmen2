FROM ubuntu
EXPOSE 3000
WORKDIR /app
USER root

COPY entrypoint.sh ./

RUN apt-get update && apt-get install -y wget curl unzip iproute2 systemctl

ENTRYPOINT [ "/usr/bin/bash", "entrypoint.sh" ]
