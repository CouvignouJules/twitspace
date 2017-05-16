class Comment < ApplicationRecord
  	belongs_to :user
	belongs_to :tweet

  	validates :user, presence: true
	validates :tweet, presence: true
	validates :text, length: { minimum: 5 }
end
