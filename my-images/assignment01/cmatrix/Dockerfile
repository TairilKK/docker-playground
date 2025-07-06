FROM alpine:latest

RUN apk update &&\
    apk add --no-cache cmatrix

ENTRYPOINT [ "cmatrix" ]

CMD [ "-abs" ]
