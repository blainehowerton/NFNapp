class Organization < ApplicationRecord

has_many :contacts
belongs_to :ads
has_many :ads

validates :name, presence: true

end
