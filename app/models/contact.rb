class Contact < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

belongs_to :organization

validates :first, presence: true
validates :last, presence: true
validates :organization_id, presence: true

end

