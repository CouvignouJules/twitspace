class ApiV1::TweetsController < ActionController::Base
	acts_as_token_authentication_handler_for User, except: [:index, :show]

	def index
		@tweets = Tweet.all
	end
	def show
		@tweet = Tweet.find(params[:id])
		@new_comment = Comment.new
	rescue ActiveRecord::RecordNotFound => ex
		render json: { error: ex.message }, status: :not_found
	end
	def create
	  	@new_comment = Comment.new(comment_params)
		
	  	if @new_comment.valid?
	  	  	@new_comment.save!
	  	  	# renvoie show.json.jbuilder avec le code HTTP 204 Created
	  	  	render :show, status: :created
	  	else
	  	  	render_error
	  	end
	end
	
	private
	def comment_params
	  	params.require(:comment).permit(:user_id, :tweet_id, :text)
	end
	
	def render_error
	  	render json: { errors: @new_comment.errors.full_messages },
	  	  	status: :unprocessable_entity
	end
end
