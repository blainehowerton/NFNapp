class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  has_one :edition
  has_one :section

  validates :title, presence: true
  validates :web_date, presence: true
  validates :wordpress_url, presence: true
  validates :status, presence: true
  

end
