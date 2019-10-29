FROM python:3.7-alpine3.9
MAINTAINER Shekhar Gulati "shekhargulati84@gmail.com"
RUN apk add --no-cache build-base libffi-dev libressl-dev
COPY requirements.txt .
RUN pip install -r requirements.txt &&\
  pip install gevent grpcio-tools &&\
  pip install gunicorn
COPY . /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["app.py"]

