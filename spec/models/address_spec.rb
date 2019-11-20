require "rails_helper"

RSpec.describe Address, :type => :model do
  subject {
    described_class.new(state: "Any State", city: "Any City",
                        street_address: "Any Address", show: Show.new)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without valid state" do
    subject.state = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without valid city" do
    subject.city = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without valid street address" do
    subject.street_address = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without valid show" do
    subject.show = nil
    expect(subject).to_not be_valid
  end
end
