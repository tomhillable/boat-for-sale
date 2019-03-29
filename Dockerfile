FROM ruby:latest

EXPOSE 4000

WORKDIR /app

ADD Gemfile Gemfile.lock /app/

RUN gem update

RUN bundle install

CMD bundle install && jekyll serve -w -H 0.0.0.0
