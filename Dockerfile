FROM ruby:2.3.7
ENV LANG C.UTF-8
ADD . /
RUN gem install bundler
RUN bundle install
