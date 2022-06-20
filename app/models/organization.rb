class Organization < ApplicationRecord

#has_many :organizations, dependent: :destroy

validates :name, presence: true

end
