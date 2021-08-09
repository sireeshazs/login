FROM      golang:1.16-alpine
RUN       mkdir -p "/go/src" "/go/bin" && chmod -R 777 "/go"
WORKDIR   $GOPATH/src/bin

