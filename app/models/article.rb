class Article < ApplicationRecord
    
  include Visible
  
  belongs_to :section
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :web_date, presence: true
  validates :wordpress_url, presence: true
  validates :status, presence: true
  

end
