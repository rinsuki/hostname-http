FROM golang:alpine

WORKDIR /app
EXPOSE 8080

COPY ./main.go /app/
RUN go build main.go

CMD ./main