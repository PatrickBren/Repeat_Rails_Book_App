class Review < ApplicationRecord
	belongs_to :user
	belongs_to :book
	delegate :username, :name, :to => :user

	
end
