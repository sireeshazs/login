FROM      golang:1.16-alpine
RUN       mkdir -p "/go/src" "/go/bin" && chmod -R 777 "/go"
ENV       GOPATH="/go" 
WORKDIR   $GOPATH
RUN       go get ./
RUN       go build
