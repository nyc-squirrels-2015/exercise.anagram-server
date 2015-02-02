require 'sinatra'
require 'json'
require_relative 'dict'


get '/:word' do |word|
  content_type :json
  # TODO: Return anagrams.
  WORDS.select{|x| x.split("").sort == word.split("").sort}.to_json
end

get '/' do
  send_file 'index.html'
end
