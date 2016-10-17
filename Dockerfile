FROM node
MAINTAINER Nadeem Khedr
RUN npm install --silent -g elm

ADD . /var/www/elm-starter
WORKDIR /var/www/elm-starter

RUN npm install --silent
RUN elm package install --yes

EXPOSE 8000
CMD ["elm", "reactor"]
