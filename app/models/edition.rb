class Edition < ApplicationRecord
	validates :title, presence: true
end
