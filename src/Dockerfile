# syntax=docker/dockerfile:1
FROM python:3-alpine

ENV PYTHONUNBUFFERED=1

RUN apk update && apk add --no-cache git gcc musl-dev

WORKDIR /app

COPY ./main.py /app/main.py
COPY ./requirements.txt /app/requirements.txt

RUN pip install -U -r requirements.txt

#ENTRYPOINT ["tail"]
#CMD ["-f", "/dev/null"]

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "5003"]

