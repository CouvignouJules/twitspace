class Tweet < ApplicationRecord
	validates :name, presence: true
	validates :text, presence: true

	validates :photo, presence: true
	has_attachment :photo, accept: [:jpg, :png, :jpeg]
end
