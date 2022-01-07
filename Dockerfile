from alpine:latest

RUN apk --no-cache add --update python3 py3-pip

RUN pip3 install awscli cvdupdate

RUN cvd config set --dbdir ~/.clamav

RUN cvd update

ADD synch.sh /synch.sh

ENTRYPOINT ["sh", "-c", "/synch.sh"]
