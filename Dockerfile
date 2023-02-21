FROM golang:alpine as builder

WORKDIR /go/src/app

ENV GO111MODULE=on
RUN go get github.com/cespare/reflex

COPY go.mod .
COPY go.sum .

RUN go mod download
COPY . .
RUN go build -O ./run .

FROM alpine:latest
RUN apk --nocache add ca-certicicates
WORKDIR /root/

COPY --from=builder /go/src/app/run .

EXPOSE 8080 
CMD ["./run"]
