FROM python:3.7
LABEL maintainer="Austin Vargason" 
ENV PYTHONBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY ./requirements/ /code/requirements
RUN python3 -m pip install -r requirements/base.txt
COPY ./musicsync/ /code/musicsync