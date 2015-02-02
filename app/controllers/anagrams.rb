require_relative 'dict'
require 'sinatra'
require 'json'

get '/:word' do |word|
  content_type :json
  anagrams = find_anagrams(word).map{|word| word.join}
  anagrams.to_json
end



def find_anagrams(input)
  WORDS.select do |word|
    word.sort == input.downcase.split('').sort
  end
end

get '/' do
  redirect '/index.html'
end
