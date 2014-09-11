class Comment < ActiveRecord::Base
	belongs_to :profile
	validates :author, :body, presence: true
end
