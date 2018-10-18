class User < ApplicationRecord
	has_many :microposts
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 250 }, format: { with: VALID_EMAIL_REGEX }
	attr_accessor :name, :email
	# has_secure_password
	# validates :password, presence: true, length: { minimum: 6 }

end
