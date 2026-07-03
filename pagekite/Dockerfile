FROM python:3.12-alpine

RUN pip install --no-cache-dir pagekite

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]