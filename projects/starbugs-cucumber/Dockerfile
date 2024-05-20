FROM ruby:3.2.4

ENV DEBIAN_FRONTEND=noninteractive
ENV HEADLESS_MODE=true
ENV TEST_HOME /tests

RUN apt-get update && \
    apt-get install -y xvfb build-essential libffi-dev wget firefox-esr && \
    wget https://github.com/mozilla/geckodriver/releases/download/v0.34.0/geckodriver-v0.34.0-linux64.tar.gz && \
    tar -zxvf geckodriver-v0.34.0-linux64.tar.gz && \
    chmod +x geckodriver && \
    mv geckodriver /usr/local/bin && \
    rm geckodriver-v0.34.0-linux64.tar.gz

RUN mkdir $TEST_HOME
WORKDIR $TEST_HOME

ADD Gemfile $TEST_HOME/Gemfile
ADD Gemfile.lock $TEST_HOME/Gemfile.lock

RUN bundle install

ADD . $TEST_HOME

CMD ["bundle", "exec", "cucumber"]