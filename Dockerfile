FROM phusion/baseimage:0.9.16

MAINTAINER Bo Stauffer-Olsen <@BoStaufferOlsen>

RUN apt-get -yqq update && \
  apt-get -yqq install \
  curl \
  python-software-properties && \
  add-apt-repository ppa:chris-lea/node.js && \
  apt-get -yqq update && \
  apt-get -yqq install \
  nodejs \
  inotify-tools

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import - && \
  curl -L https://get.rvm.io | bash -s stable && \
  /bin/bash -l -c "rvm requirements" && \
  /bin/bash -l -c "echo insecure > ~/.curlrc" && \
  apt-get -yq install ca-certificates && \
  /bin/bash -l -c "rvm install 2.0" && \
  /bin/bash -l -c "gem install bundler --no-ri --no-rdoc" && \
  /bin/bash -l -c "gem install rb-inotify" && \
  /bin/bash -l -c "gem install jekyll"

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /etc/service/jekyll
ADD jekyll.sh /etc/service/jekyll/run


WORKDIR /shypwright
EXPOSE 8000
VOLUME /shypwright
