FROM node:13

LABEL Author="Alessandro Dionisi <cecchisandrone@gmail.com>"

# Install Google Chrome
RUN curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list && \
    apt-get -yqq update && \
    apt-get -yqq install google-chrome-stable && \
    rm -rf /var/lib/apt/lists/*

RUN npm install -g chromedriver --unsafe-perm=true --allow-root

CMD ["chromedriver", "--verbose", "--port=4444", "--whitelisted-ips="]

EXPOSE 4444
