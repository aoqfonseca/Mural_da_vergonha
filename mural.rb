require 'rubygems'
gem 'haml'
gem 'arrayextension'
gem 'sinatra'

require 'yaml'
require 'haml'
require 'arrayextension'
require 'sinatra'
require File.join(File.dirname(__FILE__), 'models', 'phrases')

configure :production do
end

get '/' do
  @phrases = Phrases.new
  haml :index
end

