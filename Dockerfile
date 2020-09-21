FROM ruby:1.9

WORKDIR /ehhapp

COPY . .

RUN bundle install

CMD git init ehhapp-data && rackup -o0.0.0.0 -p4567
