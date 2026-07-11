# https://developers.home-assistant.io/docs/apps/configuration#app-dockerfile
ARG BUILD_FROM=ghcr.io/home-assistant/base-python:3.14-alpine3.24
FROM ${BUILD_FROM}

RUN pip install --no-cache-dir pagekite

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
