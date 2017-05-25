class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	acts_as_liker

  	devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

	has_many :comments
end
