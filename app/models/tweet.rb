class Tweet < ApplicationRecord
	#validates :name, presence: true
	validates :text, presence: true
	validates :username, presence: true
	validates :photo, presence: true
	validates :media, presence: true
end
