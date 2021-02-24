FROM golang:1.15.6-alpine3.12

RUN apk add --no-cache git make
WORKDIR /go/src/github.com/confetti-framework/baker/
COPY . .
RUN make install

RUN go get -u github.com/mdempsky/gocode   # for code completion

ENTRYPOINT ["gore"]
