FROM alpine
MAINTAINER alanjohnwilliams <alan@thewilliamsfamily.org>

RUN apk --no-cache add \
    tar \
    xz \
    bash \
    grep

ADD backup.sh /root/

VOLUME /backup
ENTRYPOINT ["/root/backup.sh"]
CMD ["backup"]
