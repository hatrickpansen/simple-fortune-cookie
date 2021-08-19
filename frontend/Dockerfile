FROM golang:latest

WORKDIR /go/scr/app

COPY . .
RUN go build

# Exposes port 8080
EXPOSE 8080 

# Add a default command for this image
CMD ["go run"]
