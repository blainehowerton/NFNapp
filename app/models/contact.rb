class Contact < ApplicationRecord
	include Visible

  validates :first, presence: true
  validates :last, presence: true, length: { minimum: 10 }
end
