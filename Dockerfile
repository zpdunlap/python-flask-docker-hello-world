FROM python:3.7-alpine3.9

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN apk add --no-cache build-base libffi-dev libressl-dev
RUN pip install gevent grpcio-tools &&\
    pip install gunicorn

COPY . /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["app.py"]
