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

get '/ranking' do
  phrases = Phrases.new
  @ranking = Hash.new(0)
  phrases.each do | phrase |
    linha = phrase.split('|')
    autor = "anonimo"
    autor = linha[1] unless linha[1].nil? or linha[1].empty?
    @ranking[autor] +=1
  end
  haml :ranking
end



