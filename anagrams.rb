require 'sinatra'
require 'json'
require 'byebug'
require_relative 'dict'

get '/:word' do |word|
  content_type :json
  # byebug
  # TODO: Return anagrams.
  anagrams_for(word).to_json
end

get '/' do
  send_file 'index.html'
end


def anagrams_for(word)
  matched = []
  DICT.each { |dic_word|
  matched << dic_word if word.downcase.split("").sort == dic_word.downcase.split("").sort
  }
  matched
end


