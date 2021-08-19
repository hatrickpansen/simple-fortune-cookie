FROM golang:latest

RUN apt-get update -y

WORKDIR /go/scr/app

COPY ./frontend .
RUN go build

# Exposees port 8080
EXPOSE 8080 

# Add a default command for this image
CMD ["./frontend"]
