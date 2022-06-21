class Contact < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

has_many :users
has_many :organizations

validates :first, presence: true
validates :last, presence: true

end

