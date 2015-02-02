get '/:word' do |word|
  content_type :json
  # TODO: Return anagrams.
   word.split("").permutation.to_a.map{|x| x.join("")}.to_json

end

get '/' do
  redirect '/index.html'
end
