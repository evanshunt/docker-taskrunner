FROM ruby

RUN apt-get update && apt-get install -y nodejs npm
RUN gem install jekyll rdiscount kramdown

RUN npm install -g grunt-cli bower
RUN ln -s /usr/bin/nodejs /usr/bin/node

WORKDIR /app

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]