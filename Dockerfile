FROM pytorch/pytorch:1.0.1-cuda10.0-cudnn7-runtime

RUN apt update

RUN apt install -y python3-pip

COPY requirements.txt /root/requirements.txt
RUN pip3 install -r /root/requirements.txt
