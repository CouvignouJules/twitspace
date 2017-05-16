class Tweet < ApplicationRecord
	has_many :comments

	validates :text, presence: true
	validates :username, presence: true
	validates :photo, presence: true
	validates :media, presence: true
end
