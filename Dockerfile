FROM ubuntu

RUN apt-get update; \
    apt-get install -y \
      python python-pip \
      python-numpy python-scipy \
      python-dev python-setuptools \
      python-tk
RUN pip install --upgrade pip
RUN pip install -U scikit-learn matplotlib