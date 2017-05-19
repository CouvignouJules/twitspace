class Tweet < ApplicationRecord
	has_many :comments
	has_many :votes

	def like(user)
	  votes << Vote.new(user: user)
	end

	def unlike(user)
	  votes.where(user_id: user.id).first.destroy
	end

	validates :text, presence: true
	validates :username, presence: true
	validates :photo, presence: true
	validates :media, presence: true
end
