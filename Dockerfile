FROM python:3.6-alpine

WORKDIR /home/fcimutm

COPY app app
COPY deployment deployment
COPY migrations migrations

COPY config.py config.py
COPY requirements.txt requirements.txt
COPY microblog.py microblog.py

pip3 install --upgrade pip
pip3 install -r requirements.txt


RUN flask db stamp head
RUN flask db migrate
RUN flask db upgrade

EXPOSE 5000

ENTRYPOINT flask run --host=0.0.0.0
