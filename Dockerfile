FROM ruby:3.3.0

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000

#CMD ["rails", "server", "-b", "0.0.0.0"]
CMD ["./bin/dev"]
