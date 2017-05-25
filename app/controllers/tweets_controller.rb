class TweetsController < ApplicationController
	def show
  	  	@tweet = Tweet.find(params[:id])
  	  	@new_comment = Comment.new
  	end
	def index
 	   	@tweets = Tweet.order(:id).page(params[:page]).per(10)
 	   	#@tweets = Tweet.all
 	end
 	def like
 		current_user.like!(Tweet.find(params[:id]))
 	end
 	def unlike
 		current_user.unlike!(Tweet.find(params[:id]))
 	end
end
