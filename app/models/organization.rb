class Organization < ApplicationRecord

has_many :contacts

validates :name, presence: true

end
