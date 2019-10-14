class Tour < ApplicationRecord
  has_many :shows
  has_many :members
end
