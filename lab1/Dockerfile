FROM alpine

RUN apk add --no-cache curl

WORKDIR /app

COPY check_response.sh .

RUN chmod +x check_response.sh

RUN echo "* * * * * /bin/sh /app/check_response.sh" >> /etc/crontabs/root

RUN echo "* * * * * sleep 30; /bin/sh /app/check_response.sh" >> /etc/crontabs/root

CMD ["crond", "-f"]
