class Address < ApplicationRecord
  belongs_to :show

  def fmt_address
    return number.to_s + " " + street + ", " + city + " " + state
  end
end
