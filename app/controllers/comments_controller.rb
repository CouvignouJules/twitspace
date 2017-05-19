class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@tweet = Tweet.find(params[:tweet_id])
		@new_comment = Comment.new(comment_params)
		@new_comment.tweet = @tweet
		@new_comment.user = current_user

	    if @new_comment.valid?
	     	@new_comment.save!
	      	redirect_to tweet_path(@tweet)
	    else
	     	render "tweets/show"
	    end
	end

	private
	def comment_params
	   	params.require(:comment).permit(:text)
  	end
end
