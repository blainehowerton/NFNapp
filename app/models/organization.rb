class Organization < ApplicationRecord

has_many :contact, dependent: :destroy

validates :name, presence: true

end
