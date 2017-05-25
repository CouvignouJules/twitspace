class ApiV1::MyPhotosController < ActionController::Base
	acts_as_token_authentication_handler_for User

	#On peut lister toutes les photos qu'on a liké
	def index
		@tweets = Tweet.all
	end
end
