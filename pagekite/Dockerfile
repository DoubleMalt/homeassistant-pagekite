# https://developers.home-assistant.io/docs/apps/configuration#app-dockerfile
ARG BUILD_FROM=ghcr.io/home-assistant/base-python:3.14-alpine3.24
FROM ${BUILD_FROM}

# pagekite is not published on PyPI; install the official single-file release.
ARG PAGEKITE_URL=https://pagekite.net/pk/pagekite.py
RUN curl -fsSL -o /usr/local/bin/pagekite.py "${PAGEKITE_URL}" \
    && chmod a+x /usr/local/bin/pagekite.py

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
