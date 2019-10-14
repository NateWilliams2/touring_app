class PitStop < ApplicationRecord
  has_one :address, as: :stop
  belongs_to :tour, foreign_key: "tour_id"
end
