FROM node:lts

WORKDIR /usr/src/hyperdrive-daemon/

COPY ./package.json /usr/src/hyperdrive-daemon/
RUN npm install

COPY . /usr/src/hyperdrive-daemon/

ENTRYPOINT [ "./bin/run/run" ]
