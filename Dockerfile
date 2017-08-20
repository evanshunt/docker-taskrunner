FROM ruby
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get update && apt-get install -y nodejs graphicsmagick
RUN gem install jekyll rdiscount kramdown exifr

RUN npm install -g grunt-cli bower && echo '{ "allow_root": true }' > /root/.bowerrc

WORKDIR /app

EXPOSE 4000

RUN groupadd --gid 1000 node \
  && useradd --uid 1000 --gid node --shell /bin/bash --create-home node

USER node

CMD ["bash"]
