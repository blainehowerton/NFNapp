class Edition < ApplicationRecord


	has_many :sections, through: :articles

end
