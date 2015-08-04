FROM node:0.12.7-onbuild

ADD docs /docs
ADD test /docs/tests

RUN useradd -u 2004 docker

CMD node target/codacy-coffeescript.js
