class Edition < ApplicationRecord
	has_many :sections, through: :articles
	validates :title, presence: true
end
