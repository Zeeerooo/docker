FROM python:3-slim
MAINTAINER Francisco Cifuentes

RUN apt-get update && \
    apt-get install -y \
        gcc \
        git \
        make

RUN pip install \ 
        gevent \
        gunicorn

RUN mkdir /ratadns && \
    cd /ratadns && \
    git clone https://github.com/niclabs/ratadns-gopher.git && \
    cd ratadns-gopher && \
    git checkout demo1

RUN cd /ratadns/ratadns-gopher && \
    pip install -r requirements.txt

RUN apt-get remove -y \
    git \
    gcc \
    make

COPY config.json /ratadns/ratadns-gopher/config.json

CMD cd /ratadns/ratadns-gopher && \
    gunicorn --worker-class gevent -w 4 -b 0.0.0.0:8000 gopher:app
