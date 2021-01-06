
FROM node:12-alpine
LABEL LABEL Maintainer="Alexey Matashkin <amatashkin@gmail.com>" Description="Nightscout" Version="210106"

RUN mkdir -p /opt/app
WORKDIR /opt/app

RUN apk add --no-cache --virtual .gyp \
        python \
        make \
        g++ \
        git \
    && git clone git://github.com/nightscout/cgm-remote-monitor.git /opt/app \
        && cd /opt/app && git checkout ${DEPLOY_HEAD-master} \
        && chown -R node:node /opt/app \
    && npm install && \
        npm run postinstall && \
        npm run env && \
        npm audit fix \
    && apk del .gyp

USER node

EXPOSE 1337

CMD ["node", "server.js"]