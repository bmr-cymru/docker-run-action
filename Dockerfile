FROM docker:20.10

RUN apk add bash

COPY entrypoint.sh /entrypoint.sh

VOLUME /github/workspace
VOLUME /github/workflow

ENTRYPOINT ["/entrypoint.sh"]
