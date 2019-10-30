class Address < ApplicationRecord
  belongs_to :show
  validates :state, presence: true, length: { maximum: 50 }
  validates :city, presence: true, length: { maximum: 50 }
  validates :street, presence: true, length: { maximum: 100 }

  def fmt_address
    return number.to_s + " " + street + ", " + city + " " + state
  end
end
