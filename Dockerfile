FROM node:6

# Install AWS CLI tools
RUN apt-get update \
  && apt-get install -y python-dev python-pip \
  && pip install --upgrade awscli \
  && apt-get remove python-dev python-pip
