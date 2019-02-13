FROM node:lts

ENV LERNA_VERSION 3.11.0
RUN npm i -g lerna@${LERNA_VERSION}

LABEL com.github.actions.name="action-lerna"
LABEL com.github.actions.description="A simple GitHub Action to use lerna"
LABEL com.github.actions.icon="fire"
LABEL com.github.actions.color="blue"

ADD entrypoint.sh /entrypoint.sh

CMD ["node"]
ENTRYPOINT ["/entrypoint.sh"]