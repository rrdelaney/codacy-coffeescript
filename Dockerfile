FROM alpine:3.7

WORKDIR /usr/src/app

RUN adduser -u 2004 -D docker

ADD --chown=docker:docker docs /docs
COPY --chown=docker:docker package.json /usr/src/app
COPY --chown=docker:docker target /usr/src/app/target

RUN apk add --no-cache bash nodejs-npm
RUN npm install --only=production

USER docker

ENTRYPOINT ["node"]
CMD ["target/codacy-coffeescript.js"]
