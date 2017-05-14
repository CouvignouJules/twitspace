# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tweet.destroy_all

#require 'twitter'
#
#client = Twitter::REST::Client.new do |config|
#  config.consumer_key        = "aiyzc2NDhAYsM32IWAJOjdFZy"
#  config.consumer_secret     = "CS6liN5XVFakOZupKlOsL23CuxSMlaH5KIhXig6P3MLTwY7kDj"
#  config.access_token        = "863747432793944065-Mh1k9o63U0qTpnh5ioYCq69hChAwpV5"
#  config.access_token_secret = "7TBfyPTftkP1okWxzFINGnCJ6Xit4jF82EK8FjHQ3skjO"
#end
#
#tweets = client.user_timeline('https://twitter.com/isscommunity', count: 100)
#
#tweets.each do |tweet|
#    Tweet.create!(text: tweet.full_text, 
#    			  photo: tweet.user.profile_image_url,
#    			  username: tweet.user.name,
#    			  media: defined?(tweet.media[0].media_url) ? tweet.media[0].media_url : "#")
#end