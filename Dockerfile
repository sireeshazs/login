FROM      golang:1.16-alpine
RUN       mkdir -p "/go/src" "/go/bin" && chmod -R 777 "/go"
ENV       GOPATH="/go" 
WORKDIR   $GOPATH/src/bin
RUN       go build -o main

