require "rails_helper"

RSpec.describe Member, :type => :model do
  subject {
    described_class.new(name: "Name", role: "Role", pay: 100, pay_by_percent: false, tour: Tour.new(), musician: false, phone_number: "333-333-3333")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without valid name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without valid role" do
    subject.role = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without valid pay" do
    subject.pay = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without valid tour" do
    subject.tour = nil
    expect(subject).to_not be_valid
  end
  it "is not valid with an invalid phone number" do
    subject.phone_number = "21-21-21-21-32-45-45"
    expect(subject).to_not be_valid
  end
end
