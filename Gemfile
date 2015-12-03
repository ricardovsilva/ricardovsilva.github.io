source 'http://rubygems.org'

require 'json'
require 'open-uri'
require 'jekyll/localization'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)

gem 'bundler'
gem 'jekyll'
gem 'rack-jekyll'
gem 'github-pages', versions['github-pages']