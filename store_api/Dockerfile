FROM golang:1.16-alpine

WORKDIR /go/src
# COPY ./ .

RUN apk upgrade --update && \
    apk --no-cache add git

RUN go get -u github.com/cosmtrek/air

CMD ["air"]
# CMD ["go", "run", "main.go"]