FROM ubuntu:latest
LABEL authors="white2demon"

COPY requirements.txt .
RUN pip install --user -r requirements.txt

FROM python:3.8
WORKDIR /code

COPY ./src .

CMD [ "python", "-u", "./main.py" ]
