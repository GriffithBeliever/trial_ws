FROM golang:1.10.1

WORKDIR /go/src/github.com/app

ADD . /go/src/github.com/app

EXPOSE 8080

RUN go get ./...
RUN go build

# CMD cd /go/src/github.com/app/ && ./lib
CMD cd /go/src/github.com/app/ && ls -la && ./app