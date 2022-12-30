FROM alpine:3.14
RUN apk add --no-cache go
COPY ./ /iproxy
RUN cd iproxy && go build -o iproxy iproxy.go
ENTRYPOINT ["sh"]
