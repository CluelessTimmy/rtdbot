FROM golang:1.16

WORKDIR /go/src/app

COPY . .

RUN go get -d -v ./app.go
RUN go install -v ./app.go

CMD ["app"]