class TweetsController < ApplicationController
	def show
  	  	@tweet = Tweet.find(params[:id])
  	end
	def index
 	   	@tweets = Tweet.all
 	end
end
