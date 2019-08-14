class Book < ApplicationRecord
	belongs_to :user
	has_many :reviews
	
	delegate :username, :name, :to => :user
	has_one_attached :image

	def self.search(search)
		if search
			where(["title LIKE ?","%#{search}%"])
		else
			all
		end
	end
end
