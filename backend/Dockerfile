FROM python:3.7
LABEL maintainer="Austin Vargason" 
ENV PYTHONBUFFERED 1
WORKDIR /app/
COPY ./requirements/ /app/requirements
RUN python3 -m pip install -r requirements/prod.txt
COPY . /app/