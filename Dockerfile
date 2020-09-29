FROM decidim/decidim:0.22.0

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV RAILS_ENV production
ENV PORT 3000
ENV SECRET_KEY_BASE=no_need_for_such_secrecy
ENV RAILS_SERVE_STATIC_FILES=true

ENV RAILS_LOG_TO_STDOUT enabled
ENV NODE_ENV production

WORKDIR /code

ADD Gemfile .
ADD Gemfile.lock .

RUN bundle config set path 'vendor/bundle' && bundle install --quiet --jobs 4 --retry 5

# These two lines below will remove the `require` in `decidim-dev.gemspec`, which seems to be
# causing issues in certain circumstances using bundler. They should not be needed at all, so
# it's worth removing them in the future and checking out they work.
#RUN sed -i '/require/d' decidim-dev/decidim-dev.gemspec
#RUN sed -i "s/Decidim::Dev.version/\"$(cat .decidim-version)\"/g" decidim-dev/decidim-dev.gemspec

#ADD ./vendor /app/vendor

ADD . .
RUN bundle exec rails assets:precompile
RUN mkdir tmp/pids

EXPOSE 3000

ENTRYPOINT []
CMD bundle exec rails s -p $PORT
