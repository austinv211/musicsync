FROM python:3.7
LABEL maintainer="Austin Vargason" 
ENV PYTHONBUFFERED 1
RUN mkdir /code
WORKDIR /code
RUN mkdir ./requirements
COPY ./requirements/ /code/requirements/
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements/base.txt
COPY . /code/