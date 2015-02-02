require_relative '../../dict.rb'


# CANN_WORDS = WORDS.map do |word|
#   { word => word.downcase.split("").sort }
# end



# loop over WORDS
# make cannonical
# keep cann words index
# match cann new word to looped dic
# match? put in arr with original and index


get '/:word' do |word|
  content_type :json #required to return a json object that is manipulated with JS rather than displayed
  arr = []
  WORDS.each do |single_word|
      if single_word.downcase.split("").sort == word.downcase.split("").sort
        arr << single_word
      end
    end
  # arr.join(" ").to_json
  arr.to_json
end

get '/' do
  redirect '/index.html'
end


# CANN_WORDS.each do |dict_word, cann_word|
#   if word.downcase.split("").sort == cann_word
#     arr << dict_word
#   end
# end
