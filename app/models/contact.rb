class Contact < ApplicationRecord
	include Visible

  validates :first, presence: true
end
