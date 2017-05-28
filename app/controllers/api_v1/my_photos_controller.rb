class ApiV1::MyPhotosController < ActionController::Base
	acts_as_token_authentication_handler_for User

	#On peut lister toutes les photos qu'on a liké
	#Exemple de requête :
	# => curl -H "X-User-Email: b@b.fr" \
	#         -H "X-User-Token: KdAVvNVAhhkLNuskkHPA" http://10.0.2.15:3000/api_v1/my_photos

	def index
		@tweets = Tweet.all
	end
end
