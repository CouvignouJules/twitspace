class ApiV1::CommentsController < ActionController::Base
	acts_as_token_authentication_handler_for User

	#On peut créer un commentaire via l'api
	#Exemple de requête:
	# => curl -X POST \
	#         -H 'Content-Type: application/json' \
	#         -H "X-User-Email: b@b.fr" \
	#         -H "X-User-Token: KdAVvNVAhhkLNuskkHPA" \
	#         -d '{ "comment": { "user_id": 1, "tweet_id": 0, "text": "TEST API 1" } }' http://10.0.2.15:3000/api_v1/comments

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
