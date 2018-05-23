FROM jekyll/jekyll 

# Environment vars
ENV APP_HOME /site

# Install gems
COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install


# Config app dir
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

# Copy codebase into workdir
COPY . $APP_HOME

CMD jekyll serve
