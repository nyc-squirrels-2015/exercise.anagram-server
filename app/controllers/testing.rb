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

  def anagrams_for(word, dictionary)
    # anagrams_list = []
    dictionary.each do |k, v|
      if is_anagram?(k, word)
        dictionary[k].to_json
      else
        [].to_json
      end
    end
      # anagrams_list.to_json
  end

  def is_anagram?(word1, word2)
    canonical(word1) == canonical(word2)
  end

  p DICT_HASH[canonical("rosa")]

