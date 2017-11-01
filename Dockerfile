FROM node:6

# Upgrade yarn to v1.2.1
RUN npm install --global yarn@1.2.1

# Install AWS CLI tools
RUN apt-get update \
  && apt-get install -y python-dev python-pip \
  && pip install --upgrade awscli \
  && apt-get remove -y python-dev python-pip
