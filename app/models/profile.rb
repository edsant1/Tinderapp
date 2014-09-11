class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validates :birdate, :gender, :about, :rank, presence: true
end
