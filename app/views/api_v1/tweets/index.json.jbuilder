#Un internaute pour récupérer les 20 dernières photos via l'api
json.tweets(@tweets.first(20)) do |tweet|
  json.id tweet.id
  json.photo tweet.media
end