FROM      golang:1.16-alpine
RUN       mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
ADD       . $GOPATH/src/bin
WORKDIR   $GOPATH/src/bin
