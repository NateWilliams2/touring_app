class Address < ApplicationRecord
  belongs_to :stop, polymorphic: true, foreign_key: "stop_id"
end
