require "rails_helper"

RSpec.describe Show, :type => :model do
  subject {
    described_class.new(description: "Description", pay: 400, date: "2020-09-12",
                        load_in: "17:30", set: "21:00", lodging: "Lodging",
                        tour: Tour.new(), expected_merch: 250, wifi_net: "Wifi", wifi_pw: "Password",
                        laundry: false, showers: true, contact_name: "Contact", contact_email: "contact@gmail.com",
                        contact_number: "333-333-3333", venue_website: "www.thebrick.com")
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid with invalid venue_website" do
    subject.venue_website = "website"
    expect(subject).to_not be_valid
  end
  it "is still valid without venue_website" do
    subject.venue_website = nil
    expect(subject).to be_valid
  end
  it "is not valid with invalid contact_number" do
    subject.contact_number = "22-22-22-22-22-22-22-22"
    expect(subject).to_not be_valid
  end
  it "is still valid without contact_number" do
    subject.contact_number = nil
    expect(subject).to be_valid
  end
  it "is not valid with invalid contact_email" do
    subject.contact_email = "contact"
    expect(subject).to_not be_valid
  end
  it "is still valid without contact_email" do
    subject.contact_email = nil
    expect(subject).to be_valid
  end
  it "is still valid without contact" do
    subject.contact_name = nil
    expect(subject).to be_valid
  end
  it "is still valid without wifi_pw" do
    subject.wifi_pw = nil
    expect(subject).to be_valid
  end
  it "is still valid without wifi_net" do
    subject.wifi_net = nil
    expect(subject).to be_valid
  end
  it "is not valid without valid tour" do
    subject.tour = nil
    expect(subject).to_not be_valid
  end
  it "is still valid without valid expected_merch" do
    subject.expected_merch = nil
    expect(subject).to be_valid
  end
  it "is still valid without description" do
    subject.description = nil
    expect(subject).to be_valid
  end
  it "is not valid without valid pay" do
    subject.pay = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without valid date" do
    subject.date = nil
    expect(subject).to_not be_valid
  end
  it "is still valid without load_in" do
    subject.load_in = nil
    expect(subject).to be_valid
  end
  it "is still valid without set" do
    subject.set = nil
    expect(subject).to be_valid
  end
  it "is still valid without valid lodging" do
    subject.lodging = nil
    expect(subject).to be_valid
  end
end
