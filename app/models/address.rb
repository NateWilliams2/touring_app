class Address < ApplicationRecord
  belongs_to :show
  validates :state, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :street_address, presence: true, length: { maximum: 100 }

  def fmt_address
    return street_address + ", " + city + " " + state
  end
end
