FROM ubuntu:20.04

WORKDIR /usr/src/

RUN apt-get update
RUN apt-get update && apt-get install -y --no-install-recommends \
        python3-setuptools \
        python3-pip \
        python3-dev \
        libglib2.0-0 \
        libsm6 \
        libxext6 \
        libxrender-dev \
        git \
        curl \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
COPY . /usr/src/ 
COPY ./requirements.txt .

RUN pip3 install -r requirements.txt

CMD gunicorn web_face.wsgi:application --bind 0.0.0.0:8000

