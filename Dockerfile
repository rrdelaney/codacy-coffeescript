FROM node:0.12.7-onbuild

WORKDIR /usr/src/app

ADD docs /docs
ADD test /docs/tests

RUN useradd -u 2004 docker
RUN ["chown", "-R", "docker:docker", "/usr/src/app"]
RUN ["chown", "-R", "docker:docker", "/docs"]

USER docker

ENTRYPOINT ["node"]
CMD ["target/codacy-coffeescript.js"]
