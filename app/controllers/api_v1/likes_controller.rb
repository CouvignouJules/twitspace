class ApiV1::LikesController < ActionController::Base
	acts_as_token_authentication_handler_for User

	#On peut liker un tweet via l'api : si l'utilisateur a déjà liké le tweet, ça le unlike
	def create
	  	@tweet = Tweet.find(params[:tweet][:id])
		
	  	if @tweet.valid?
	  		if @tweet.liked_by?(current_user)
	  	  		current_user.like!(@tweet)
	  	  	else
	  	  		current_user.unlike!(@tweet)
	  	  	end
	  	  	# renvoie show.json.jbuilder avec le code HTTP 204 Created
	  	  	render :show, status: :created
	  	else
	  	  	render_error
	  	end
	end
	
	private
	def render_error
	  	render json: { errors: @tweet.errors.full_messages },
	  	  	status: :unprocessable_entity
	end
end
