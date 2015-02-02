def word_anagram(word)

  array_in = word.split("").sort
  array_permutation = array_in.permutation.to_a
  p array_permutation
  array_out = []
  array_permutation.each do |word|
    array_out<<word.join('')
  end
  array_out

end
