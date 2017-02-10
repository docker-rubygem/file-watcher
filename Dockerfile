FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.9

RUN gem install file-watcher --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["watcher"]
CMD ["--help"]