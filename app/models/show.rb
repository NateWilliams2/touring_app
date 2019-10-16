class Show < ApplicationRecord
  #attr_accessor :date, :pay, :load_in, :set, :lodging, :description, :address
  has_one :address
  belongs_to :tour, foreign_key: "tour_id"
end
