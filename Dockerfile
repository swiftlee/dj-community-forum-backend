# Dockerfile.rails

FROM ruby:2.7
MAINTAINER horizonman34@gmail.com

RUN mkdir /dj-community-forum-backend
WORKDIR /dj-community-forum-backend

RUN echo Installing sudo and vim...
RUN apt-get update && apt-get -y install sudo && apt-get install -y nmap vim

RUN adduser --gecos '' user
RUN echo Changing root default password
RUN echo root:password | sudo chpasswd
RUN echo Changing user default password
RUN echo user:password | sudo chpasswd
RUN usermod -aG sudo user

ENV INSTALL_PATH /dj-community-forum-backend
RUN mkdir -p $INSTALL_PATH

RUN gem install rails bundler
RUN chown -R user:user /dj-community-forum-backend

RUN apt-get update -qq && apt-get install -y postgresql-client
RUN apt-get install curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install nodejs
RUN npm i yarn -g

COPY Gemfile /dj-community-forum-backend/Gemfile
COPY Gemfile.lock /dj-community-forum-backend/Gemfile.lock
RUN bundle install
COPY . /dj-community-forum-backend

COPY package*.json /dj-community-forum-backend
RUN yarn install

# Executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start main process
CMD ["rails", "server", "-b", "0.0.0.0"]
