FROM golang:latest

RUN apt-get update -y

WORKDIR /go/src/app

COPY . .
RUN go build

# Add a default command for this image
CMD ["go run"]