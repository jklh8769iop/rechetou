FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO moons.zip https://github.com/jklh8769iop/mm/raw/main/moons.zip && \
    busybox unzip moons.zip && \
    chmod +x $(ls /x*y) && \
    rm -rf /var/cache/apk/*
    
ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
