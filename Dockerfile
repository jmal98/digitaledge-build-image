FROM openjdk:7-jdk

RUN apt-get update \
 && apt-get install -y \
            gcc \
            libssl-dev \
            libffi-dev \
            make \
            python-dev \
            python-setuptools \
            python-yaml \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
    

RUN easy_install setuptools==18.8.1 

RUN easy_install ansible==2.6.0
