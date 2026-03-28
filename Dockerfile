FROM node:20-alpine

RUN apk add --update \
    bash \
    zip \
    curl \
    git \
    wget \
    gnupg \
    build-base \
    gcc \
    g++

RUN npm install -g \
    less less-plugin-autoprefix less-plugin-clean-css \
    uglify-js

COPY bin/* /bin/

ENTRYPOINT ["docker-entrypoint"]

CMD ["npm", "info"]
