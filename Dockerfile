FROM      golang:1.16-alpine
ENV       GOPATH=/go
ENV       PATH $GOPATH/bin:$PATH
RUN       mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR   $GOPATH   