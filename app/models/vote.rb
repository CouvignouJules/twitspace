class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :tweet

  validates :user_id, uniqueness: {scope: :tweet}
end
