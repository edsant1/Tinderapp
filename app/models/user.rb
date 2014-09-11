class User < ActiveRecord::Base
	has_many :profiles
	has_many :tags
	validate :name, :email, :password, presence: true
end
