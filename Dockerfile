From      golang:1.16-alpine
RUN       mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR   $GOPATH
ENV       GOPATH /go
ENV       PATH $GOPATH/bin:$PATH