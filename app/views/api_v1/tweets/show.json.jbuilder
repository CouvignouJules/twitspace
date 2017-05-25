json.id @tweet.id
json.text @tweet.text
json.photo @tweet.media

json.comments(@tweet.comments) do |comment|
  json.id comment.id
  json.author comment.user_id
  json.text comment.text
end
