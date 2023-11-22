# syntax=docker/dockerfile:1
FROM python:3-alpine

ENV PYTHONUNBUFFERED=1

RUN apk update && apk add --no-cache git

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

RUN pip install -U -r requirements.txt
RUN modal token new --source poe

RUN git clone https://github.com/poe-platform/server-bot-quick-start

#COPY ./web /usr/src/app/
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
