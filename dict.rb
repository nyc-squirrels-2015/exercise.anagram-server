
WORDS = []
File.open("/usr/share/dict/words").map do |word|
  WORDS << word.chomp.downcase.split("")
end
