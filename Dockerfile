FROM ruby:1.9

WORKDIR /ehhapp

COPY . .

RUN rm config.yaml

RUN bundle install

CMD git init ehhapp-data && rackup -o0.0.0.0 -p4567
