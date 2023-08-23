# Cowrie Demo

FROM debian:latest

RUN apt-get update

RUN apt-get -y install git python3 python3.11-venv  libssl-dev libffi-dev build-essential libpython3-dev python3-minimal authbind virtualenv
RUN apt install sudo

RUN adduser --disabled-password cowrie

RUN git clone http://github.com/cowrie/cowrie /home/cowrie/cowrie/
RUN chown -R cowrie:cowrie /home/cowrie/cowrie

RUN python3 -m venv /home/cowrie/cowrie/cowrie-env

RUN /home/cowrie/cowrie/cowrie-env/bin/pip3 install -r /home/cowrie/cowrie/requirements.txt

RUN runuser -l cowrie -c '/home/cowrie/cowrie/bin/cowrie start'

EXPOSE 2222/tcp


