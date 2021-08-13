FROM      golang:latest
RUN       mkdir -p "$GOPATH/src/login"	
ADD       . $GOPATH/src/login
WORKDIR   $GOPATH/src/login
RUN       go mod init
RUN       go get ./...
RUN       go build
CMD       ["./login"]

