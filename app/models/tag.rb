class Tag < ActiveRecord::Base
	belongs_to :user
	validate :interest, presence: true
end
