FROM golang:latest
MAINTAINER Andrew Smithson <smithson@uk.ibm.com>
RUN mkdir -p src/github.com/opencontainers/runc
COPY . src/github.com/opencontainers/runc/
WORKDIR src/github.com/opencontainers/runc
RUN make && make install
