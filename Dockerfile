FROM node:16-alpine

WORKDIR /app

COPY ./ /app

RUN apk update && \
    apk add --no-cache bash

EXPOSE 5000

CMD ["npm install -g @angular/cli; npm i; ng serve"]
