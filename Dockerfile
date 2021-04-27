FROM node:14

RUN curl -L -o /tmp/elm.gz https://github.com/elm/compiler/releases/download/0.19.1/binary-for-linux-64-bit.gz \
  && gunzip /tmp/elm.gz \
  && chmod +x /tmp/elm \
  && mv /tmp/elm /usr/local/bin/

RUN npm -g config set user root \
  && npm i -g elm-format elm-test
