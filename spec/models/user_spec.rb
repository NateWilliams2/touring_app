require "rails_helper"

RSpec.describe User, :type => :model do
  subject {
    described_class.new(name: "Name", email: "test@example.com", password: "password01")
  }
  context "on a new user" do
    it "should not be valid without a password" do
      user = described_class.new(name: "Name", email: "test@example.com", password: nil, password_confirmation: nil)
      expect(user).to_not be_valid
    end

    it "should be not be valid with a short password" do
      user = described_class.new(name: "Name", email: "test@example.com", password: "short", password_confirmation: "short")
      expect(user).to_not be_valid
    end

    it "should not be valid with a confirmation mismatch" do
      user = User.new password: "short", password_confirmation: "long"
      expect(user).to_not be_valid
    end
  end
end
