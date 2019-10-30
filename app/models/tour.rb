class Tour < ApplicationRecord
  belongs_to :user, foreign_key: "user_id"
  has_many :shows
  has_many :members
  validates :title, presence: true, length: { maximum: 200 }
end
