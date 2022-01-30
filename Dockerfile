FROM alpine

LABEL maintainer="docker.io/karthiknk81"

RUN apk add --upgrade openjdk11

ADD https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.2.1.tgz /tmp/jmeter.tgz

# DELETE UNWANTED FILES and TEMP FILES
RUN tar xf /tmp/jmeter.tgz -C /opt/
RUN rm -f /tmp/jmeter.tgz /opt/apache-jmeter-5.2.1/LICENSE /opt/apache-jmeter-5.2.1/NOTICE /opt/apache-jmeter-5.2.1/README.md
RUN rm -fr /opt/apache-jmeter-5.2.1//docs /opt/apache-jmeter-5.2.1/printable_docs

ENV PATH="/opt/apache-jmeter-5.2.1/bin:${PATH}" 
#COPY ./apache-jmeter-5.4.3/ /apache-jmeter-5.4.3/

WORKDIR /pt-home-dir/



