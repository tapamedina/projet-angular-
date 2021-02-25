FROM node

MAINTAINER Tapa DIA

WORKDIR /app

COPY ./projet-angular/package.json ./app

COPY ./projet-angular/package-lock.json ./app

RUN npm install 

ENV PATH ./app/node_modules/.bin:$PATH

EXPOSE 4200 

CMD ng serve --host 0.0.0.0