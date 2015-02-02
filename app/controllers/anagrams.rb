require_relative "../../dict"

DICT_HASH = {}


def canonical(word)
  word = word.downcase.split("").sort
end

def dictionary_convert
  DICTIONARY.each do |word|
    if DICT_HASH[canonical(word)]
      DICT_HASH[canonical(word)] << word
    else
      DICT_HASH[canonical(word)] = [word]
    end
  end
end

dictionary_convert

get '/:word' do |word|
  content_type :json
  "#{DICT_HASH[canonical(word)]}"
end

get '/' do
  redirect '/index.html'
end
