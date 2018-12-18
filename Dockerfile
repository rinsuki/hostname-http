FROM golang:alpine

WORKDIR /app

COPY ./main.go /app/
RUN go build main.go

CMD ./main