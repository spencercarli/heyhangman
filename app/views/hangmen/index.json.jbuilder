json.array!(@hangmen) do |hangman|
  json.extract! hangman, :word
  json.url hangman_url(hangman, format: :json)
end
