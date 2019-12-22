FROM node:13-alpine

LABEL Author="Alessandro Dionisi <cecchisandrone@gmail.com>"

RUN npm install -g selenium-side-runner chromedriver --unsafe-perm=true --allow-root

ADD ./sides /sides
ADD docker-entrypoint.sh /opt/bin/docker-entrypoint.sh
RUN chmod +x /opt/bin/docker-entrypoint.sh

ENTRYPOINT "/opt/bin/docker-entrypoint.sh"
