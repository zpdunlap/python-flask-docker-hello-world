FROM python:2.7
MAINTAINER Shekhar Gulati "shekhargulati84@gmail.com"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt &&\
  pip install gevent &&\
  pip install gunicorn
ENTRYPOINT ["python"]
CMD ["app.py"]
