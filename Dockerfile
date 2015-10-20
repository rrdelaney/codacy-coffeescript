FROM mhart/alpine-node:0.12.7

WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN apk add --update bash
RUN npm install
COPY . /usr/src/app

ADD docs /docs
ADD test /docs/tests

RUN adduser -u 2004 -D docker
RUN ["chown", "-R", "docker:docker", "/usr/src/app"]
RUN ["chown", "-R", "docker:docker", "/docs"]

USER docker

ENTRYPOINT ["node"]
CMD ["target/codacy-coffeescript.js"]
