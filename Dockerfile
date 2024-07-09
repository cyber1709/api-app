FROM python:3.9-alpine3.13

LABEL maintainer="gaurav"

ENV PYTHONUNBUFFERED 1  # so do not buffer the output, print directly to console

COPY ./requirements.txt /tmp/requirements.txt

COPY ./app /app

WORKDIR /app

EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    
