json.array!(@words) do |word|
  json.extract! word, :word
  json.url word_url(word, format: :json)
end
