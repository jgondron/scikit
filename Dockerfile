FROM ubuntu

RUN apt-get update; \
    apt-get install -y \
      python python-pip \
      python-numpy python-scipy \
      python-dev python-setuptools \
      python-tk
RUN pip install --upgrade pip
RUN pip install -U scikit-learn matplotlib
RUN pip install -U scikit-image

RUN apt-get install -y less

# Mxnet
RUN apt-get install -y \
    python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install sockeye --no-deps
RUN pip install mxnet
RUN pip install pyyaml
