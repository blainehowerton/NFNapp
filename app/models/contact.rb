class Contact < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

belongs_to :organization
belongs_to :user

validates :first, presence: true
validates :last, presence: true
validates :organization_id, presence: true

end

