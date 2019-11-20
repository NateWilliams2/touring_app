require "rails_helper"

RSpec.describe Quotation, :type => :model do
  subject {
    described_class.new(quote: "Quote", author: "Author")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without valid quote" do
    subject.quote = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without valid author" do
    subject.author = nil
    expect(subject).to_not be_valid
  end
end
