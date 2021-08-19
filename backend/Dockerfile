FROM golang:latest

WORKDIR /go/src/app

# Copy current directory /backend to the root of the golang container
COPY . .

# Build the binary
RUN go build

EXPOSE 9000

# Add a default command for this image (runs the binary)
CMD ["go run"]