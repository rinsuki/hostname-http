# hostname-http

`hostname` in http.

## How to use

```
$ docker build .
Sending build context to Docker daemon  6.537MB
Step 1/5 : FROM golang:alpine
 ---> f4bfb3d22bda
Step 2/5 : WORKDIR /app
 ---> Using cache
 ---> 33c523c0c7dc
Step 3/5 : COPY ./main.go /app/
 ---> Using cache
 ---> 28391a8aef45
Step 4/5 : RUN go build main.go
 ---> Using cache
 ---> 9948d845e55c
Step 5/5 : CMD ./main
 ---> Using cache
 ---> 25aa63cd736d
Successfully built 25aa63cd736d
$ docker run --rm -d -p 8080:8080 25aa63cd736d
3c73d19174b5911c37cb487f7087432d7b783f23eba698f8b82f271a1caf3863
$ curl localhost:8080
<h1>Hello, I am 3c73d19174b5!</h1>
$ docker stop 3c73
3c73
$
```