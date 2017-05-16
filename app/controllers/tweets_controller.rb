class TweetsController < ApplicationController
	def show
  	  	@tweet = Tweet.find(params[:id])
  	  	@new_comment = Comment.new
  	end
	def index
 	   	@tweets = Tweet.page(params[:page])
 	   	#@tweets = Tweet.all

 	   	#require 'twitter'

		#client = Twitter::REST::Client.new do |config|
		#  config.consumer_key        = "aiyzc2NDhAYsM32IWAJOjdFZy"
		#  config.consumer_secret     = "CS6liN5XVFakOZupKlOsL23CuxSMlaH5KIhXig6P3MLTwY7kDj"
		#  config.access_token        = "863747432793944065-Mh1k9o63U0qTpnh5ioYCq69hChAwpV5"
		#  config.access_token_secret = "7TBfyPTftkP1okWxzFINGnCJ6Xit4jF82EK8FjHQ3skjO"
		#end
 	   	#@tweets = client.user_timeline('https://twitter.com/Thom_astro', count: 100)
 	end
end
