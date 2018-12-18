FROM golang:alpine AS build

WORKDIR /app
EXPOSE 8080

COPY ./main.go /app/
RUN go build main.go

FROM alpine:latest

COPY --from=build /app/main /

CMD /main