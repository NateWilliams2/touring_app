require "rails_helper"

RSpec.describe Tour, :type => :model do
  subject {
    described_class.new(title: "Title", start_date: "2020-09-12", end_date: "2020-12-14", user: User.new())
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it "is still valid without start_date" do
    subject.start_date = nil
    expect(subject).to be_valid
  end
  it "is still valid without end_date" do
    subject.end_date = nil
    expect(subject).to be_valid
  end
  it "is not valid without user" do
    subject.user = nil
    expect(subject).to_not be_valid
  end
end
