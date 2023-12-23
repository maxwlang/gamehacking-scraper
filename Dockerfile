FROM node:20
WORKDIR /app
ADD . /app
RUN chmod +x ./startup.sh
RUN yarn --frozen-lockfile
RUN yarn build
CMD ./startup.sh