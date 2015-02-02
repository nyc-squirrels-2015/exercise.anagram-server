require_relative '../../dict'


$global_hashy = {}


get '/:word' do |word|
  content_type :json
  @word = params[:word]
  # TODO: Return anagrams.

    # WORDS.each_with_index do |word,index|
    #   global_hashy{"#{index}" => word}
    # end

 # p global_hashy

  def is_anagram?(word1,word2)
    if word1.downcase.split('').sort.join('') == word2.downcase.split('').sort.join('')
      true
    else
      false
    end
  end

  def anagrams_for(word)
    anagram_array = []
    WORDS.each do |dict_word|
      if is_anagram?(word, dict_word) == true
        anagram_array.push(dict_word)
      end
    end
    anagram_array
  end

  anagrams_for(@word).to_json

end


get '/' do
  redirect '/index.html'
end
