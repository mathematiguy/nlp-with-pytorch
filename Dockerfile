FROM pytorch/pytorch:1.0.1-cuda10.0-cudnn7-runtime

# Update ubuntu
RUN apt update

# Install pip3
RUN curl https://bootstrap.pypa.io/get-pip.py | python3.6

# Install requirements.txt
COPY requirements.txt /root/requirements.txt
RUN pip3 install -r /root/requirements.txt
