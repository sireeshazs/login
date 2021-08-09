FROM      golang:latest
RUN       mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
ADD       . $GOPATH/src/bin
WORKDIR   $GOPATH/src/bin
COPY      go.mod go.get ./
COPY      . .
RUN       go build -o /main .
CMD       ["./main"]

