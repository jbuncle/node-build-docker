FROM alpine:3.14.0

RUN apk add --update \
	bash \
	zip \
	curl \
	git \
	wget \
	gnupg \
	build-base \
	gcc \
	g++ \
	nodejs nodejs-npm


RUN npm install -g \
	npm \
	less less-plugin-autoprefix less-plugin-clean-css \
    uglify-js

COPY bin/* /bin/

ENTRYPOINT ["docker-entrypoint"]

CMD ["npm", "info"]