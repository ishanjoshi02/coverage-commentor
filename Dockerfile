FROM python:3.8.5-alpine3.12
LABEL maintainer='ishanjoshi0209@gmail.com'

ENV REQUIREMENTS requirements.lock

COPY ${REQUIREMENTS} .
COPY entrypoint.sh entrypoint.sh

RUN pip install --upgrade setuptools pip && \
    pip install --no-cache-dir -r ${REQUIREMENTS}

RUN chmod +x entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]
