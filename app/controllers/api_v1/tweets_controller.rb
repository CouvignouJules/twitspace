class ApiV1::TweetsController < ActionController::Base
	def index
		@tweets = Tweet.all
	end
	def show
		@tweet = Tweet.find(params[:id])
		@new_comment = Comment.new
	rescue ActiveRecord::RecordNotFound => ex
		render json: { error: ex.message }, status: :not_found
	end
end
