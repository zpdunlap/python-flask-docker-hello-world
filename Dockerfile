FROM zpdunlap/flask_app:latest
MAINTAINER Shekhar Gulati "shekhargulati84@gmail.com"
RUN apk add --no-cache build-base libffi-dev libressl-dev
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt &&\
  pip install gevent &&\
  pip install gunicorn
ENTRYPOINT ["python"]
CMD ["app.py"]

