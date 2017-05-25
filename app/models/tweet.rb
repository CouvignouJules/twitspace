class Tweet < ApplicationRecord
	acts_as_likeable
	
	has_many :comments

	validates :text, presence: true
	validates :username, presence: true
	validates :photo, presence: true
	validates :media, presence: true
end
