class Ad < ApplicationRecord


belongs_to :adsize
belongs_to :organization
belongs_to :edition

end
