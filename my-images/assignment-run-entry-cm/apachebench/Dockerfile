FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y apache2-utils && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "ab" ]

CMD [ "--help" ]
