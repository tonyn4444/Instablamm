class User < ApplicationRecord
	has_secure_password
	validates :name, :password, :password_confirmation, :email, presence: true
	
	has_many :posts
	has_many :comments
end
