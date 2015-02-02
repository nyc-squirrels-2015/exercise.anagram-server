require 'sinatra'
require 'json'
require_relative 'helper'

get '/:word' do |word|
  content_type :json
  # TODO: Return anagrams.
  #generate anagrams

  #push it into an array
  p "log #{word}"
  word_anagram(word).to_json
end

get '/' do
  send_file 'index.html'
end





