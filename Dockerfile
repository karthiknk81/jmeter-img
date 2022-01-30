FROM alpine

LABEL maintainer="docker.io/karthiknk81"

RUN apk add --upgrade openjdk11

COPY ./apache-jmeter-5.4.3/ /apache-jmeter-5.4.3/

WORKDIR /apache-jmeter-5.4.3/


