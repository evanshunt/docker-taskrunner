FROM ruby

RUN apt-get update && apt-get install -y nodejs npm
RUN gem install jekyll rdiscount kramdown

RUN npm install -g grunt-cli bower && echo '{ "allow_root": true }' > /root/.bowerrc
RUN ln -s /usr/bin/nodejs /usr/bin/node

WORKDIR /app

EXPOSE 4000

CMD ["bash"]