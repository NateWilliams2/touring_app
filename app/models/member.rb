class Member < ApplicationRecord
  belongs_to :tour, class_name: "Tour", foreign_key: "tour_id"
  validates :name, presence: true, length: { maximum: 50 }
  validates :role, presence: true, length: { maximum: 50 }
  validates :phone_number, format: { with: $PHONE_REGEX }
  validates :pay, presence: true
end
