FROM nginx

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt-get install -y nodejs
RUN apt-get install -y git
RUN /usr/bin/npm install -g gulp
RUN /usr/bin/npm install -g bower
