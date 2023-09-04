FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /Not-repo
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
WORKDIR /Not-repo
COPY . .
CMD ["/bin/bash", "/start.sh"]
