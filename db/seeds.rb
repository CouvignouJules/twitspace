# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tweet.destroy_all

require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
  config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
  config.access_token        = ENV.fetch("TWITTER_ACCES_TOKEN")
  config.access_token_secret = ENV.fetch("TWITTER_ACCES_TOKEN_SECRET")
end

tweets = client.user_timeline('https://twitter.com/Thom_astro', count: 100)
id = 0;

tweets.each do |tweet|
	if tweet.media.present?
	    Tweet.create!(id: id,
	    			  text: tweet.full_text, 
	    			  photo: tweet.user.profile_image_url,
	    			  username: tweet.user.name,
	    			  media:tweet.media[0].media_url)
	id += 1
	end #if
end #each