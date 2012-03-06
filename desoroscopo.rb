require 'rubygems'
gem 'haml'
gem 'rcov'
gem 'arrayextension'
gem 'sinatra'

require 'yaml'
require 'haml'
require 'rcov'
require 'arrayextension'
require 'sinatra'
require File.join(File.dirname(__FILE__), 'models', 'phrases')

configure :production do
end

get '/' do
  @phrases = Phrases.new
  haml :index
end

