# docker build -t while42.org/website/jekyll .
# ID=$(docker run -d -v "$PWD:/src" -p 4000:4000 while42.org/website/jekyll  serve -H 0.0.0.0)
# docker logs -f $ID
# docker rm -f $ID

FROM ruby:3.3-bookworm
MAINTAINER mose@mose.com

COPY Gemfile /tmp/
RUN cd /tmp/ && bundle install
RUN cd /tmp/ && rm -f Gemfile*

VOLUME /src
EXPOSE 4000

WORKDIR /src
ENTRYPOINT ["jekyll"]
