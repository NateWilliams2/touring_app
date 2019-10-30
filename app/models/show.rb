class Show < ApplicationRecord
  #attr_accessor :date, :pay, :load_in, :set, :lodging, :description, :address
  has_one :address
  belongs_to :tour, foreign_key: "tour_id"
  validates :date, presence: true
  validates :lodging, length: { maximum: 50 }
  validates :wifi_net, length: { maximum: 50 }
  validates :wifi_pw, length: { maximum: 50 }
  validates :contact_name, length: { maximum: 50 }
  validates :contact_email, length: { maximum: 50 }, format: { with: $EMAIL_REGEX }
  validates :contact_number, length: { maximum: 50 }, format: { with: $PHONE_REGEX }
  validates :venue_website, length: { maximum: 50 }, format: { with: $URL_REGEX }
end
