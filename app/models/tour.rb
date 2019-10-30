class Tour < ApplicationRecord
  has_many :shows
  has_many :members
  validates :title, presence: true, length: { maximum: 200 }
end
