FROM ruby:2.6.4

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    curl \
    build-essential \
    libpq-dev \
  && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get install -y nodejs \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN gem install rails:6.1.4.4 bundler:2.3.4
COPY Gemfile* /app
RUN bundle install --jobs "$(nproc)"

ADD . /app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]