FROM ruby
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update && apt-get install -y nodejs graphicsmagick
RUN gem install jekyll rdiscount kramdown exifr compass sass sass-globbing jekyll-paginate-v2

RUN npm install -g grunt-cli gulp-cli bower && echo '{ "allow_root": true }' > /root/.bowerrc

WORKDIR /app

EXPOSE 4000

CMD ["bash"]
