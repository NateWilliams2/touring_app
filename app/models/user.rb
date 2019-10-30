class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :email, length: { maximum: 50 }, format: { with: $EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :name, presence: true, length: { maximum: 150 }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
