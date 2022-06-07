class Section < ApplicationRecord
	has_many :articles
	has_many :editions, through: :articles 
	
end
