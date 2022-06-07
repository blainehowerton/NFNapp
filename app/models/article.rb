class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  has_one :edition
  has_one :section

  validates :title, presence: true
  #validates :body, presence: true, length: { minimum: 10 }
end
