FROM golang:latest

RUN apt-get update -y

WORKDIR /go/src/app

COPY ./backend .
RUN go build

# Nothing to expose?
EXPOSE 9000

# Add a default command for this image
CMD ["./backend"]