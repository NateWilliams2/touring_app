class Quotation < ApplicationRecord
  validates :quote, presence: true, length: { maximum: 4096 }
  validates :author, presence: true, length: { maximum: 120 }
end
