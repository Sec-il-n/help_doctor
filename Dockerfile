FROM ruby:2.6.5
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
            apt-get install -y \
            nodejs
RUN apt-get update -qq && \
            apt-get install -y \
            postgresql-client \
            yarn \
            vim \
            libpq-dev \
            build-essential
RUN apt-get update && apt-get install -y unzip && \
            CHROME_DRIVER_VERSION=`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE` && \
            wget -N http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip -P ~/ && \
            unzip ~/chromedriver_linux64.zip -d ~/ && \
            rm ~/chromedriver_linux64.zip && \
            chown root:root ~/chromedriver && \
            chmod 755 ~/chromedriver && \
            sh -c 'wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' && \
            sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' && \
            apt-get update && apt-get install -y google-chrome-stable

RUN mkdir /help_doctor
ENV APP_ROOT /help_doctor
WORKDIR $APP_ROOT

COPY Gemfile $APP_ROOT/Gemfile
COPY Gemfile.lock $APP_ROOT/Gemfile.lock

RUN gem install bundler
RUN bundle install

COPY . $APP_ROOT
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]