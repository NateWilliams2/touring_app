class Address < ApplicationRecord
  belongs_to :stop, polymorphic: true, foreign_key: "stop_id"

  def fmt_address
    return number.to_s + " " + street + ", " + city + " " + state
  end
end
