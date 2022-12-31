FROM alpine:3.15
RUN apk add --no-cache --virtual .build-deps go bash
COPY ./ /iproxy
RUN cd iproxy && GOARCH=386 go build -o iproxy iproxy.go
WORKDIR /iproxy
ENTRYPOINT ["bash"]
