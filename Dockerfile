FROM ruby:1.9

WORKDIR /ehhapp

COPY . .

RUN bundle install

RUN git init ehhapp-data

CMD rackup -o0.0.0.0 -p4567
