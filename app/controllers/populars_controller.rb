class PopularsController < ApplicationController

	def show
		@tweets = Tweet.all
	end

end
