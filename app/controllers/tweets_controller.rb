class TweetsController < ApplicationController
	def show
  	  	@tweet = Tweet.find(params[:id])
  	  	@new_comment = Comment.new
  	end
	def index
		#Tweets : du plus récent au plus ancien
 	   	@tweets = Tweet.order("id").page(params[:page]).per(12)
		#Tweets : du plus populaire au moins populaire
 	   	@tweets_pop = Tweet.order("likers_count DESC").page(params[:page_pop]).per(12)
 	end
 	def like
 		current_user.like!(Tweet.find(params[:id]))
        redirect_to :back
 	end
 	def unlike
 		current_user.unlike!(Tweet.find(params[:id]))
 		redirect_to :back
 	end
end
