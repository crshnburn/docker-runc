FROM ubuntu:latest
MAINTAINER Andrew Smithson <smithson@uk.ibm.com>
RUN apt-get update && apt-get install -y git make wget gcc libc6-dev
WORKDIR /tmp
RUN wget https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.4.2.linux-amd64.tar.gz
ENV PATH $PATH:/usr/local/go/bin:/runc/bin
ENV GOPATH /runc
RUN mkdir /runc
COPY . /runc
WORKDIR /runc
RUN mkdir -p src/github.com/opencontainers/runc/ \
   && ln -sf $PWD/libcontainer src/github.com/opencontainers/runc/ \
   && make && make install
