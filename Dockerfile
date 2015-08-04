FROM node:0.12.7-onbuild

RUN mv docs /docs
RUN mv test /docs/tests

RUN useradd -u 2004 docker

CMD node target/codacy-coffeescript.js
