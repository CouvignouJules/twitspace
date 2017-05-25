#Liste des photos likées par l'utilisateur
json.tweets(@tweets) do |tweet|
  if tweet.liked_by?(current_user)
  	json.id tweet.id
  	json.photo tweet.media
  end
end