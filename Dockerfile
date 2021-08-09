FROM      golang:latest
RUN       mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
ADD       . $GOPATH/src/bin
WORKDIR   $GOPATH/src/bin
RUN       go mod init
RUN       go get ./...
COPY      . .
RUN       go test -o /main . 
CMD       ["./main"]

