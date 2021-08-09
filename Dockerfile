FROM      golang:latest
RUN       mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR   $GOPATH/src/bin
RUN       go mod init
RUN       go get ./...
RUN       go build -o /main . 
CMD       ["./main"]

