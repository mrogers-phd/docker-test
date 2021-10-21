FROM ubuntu

# Eliminate LANG questions
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install bash python3-dev python3-pip 
RUN apt install python-is-python3

RUN pip3 install --upgrade pip

ENV HOME=/home/simple
WORKDIR $HOME
CMD ["bash"]
