FROM node:14.13.1-stretch-slim

COPY docker-entrypoint.sh ./app/
COPY ./ ./app/

USER root
RUN mkdir /app/web/node_modules
RUN chown node:node /app/web/node_modules
USER $USER_UID

WORKDIR /app
EXPOSE 3000

ENTRYPOINT ["/app/docker-entrypoint.sh"]