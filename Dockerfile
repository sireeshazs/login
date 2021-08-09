FROM      golang:1.16-alpine
RUN       mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
ENV       GOPATH=/go
WORKDIR   ${GOPATH} 
ADD       . $GOPATH       
COPY      \$GOPATH /src/bin

