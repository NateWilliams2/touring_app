# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "User1", email: "test@example.com", password: "password01", password_confirmation: "password01")
user2 = User.create(name: "User2", email: "test2@example.com", password: "password02", password_confirmation: "password02")

Quotation.create(quote: "The part you don't expect when you start out is all the people who come into your life wanting a piece of you, not caring about your wellbeing. The insane schedule is very difficult. Touring looks very glamourous but it's hard and gruelling - the travelling, the meet-and-greets - it was too crazy.",
                 author: "Cheryl James")
Quotation.create(quote: "A lot of people can't stand touring but to me it's like breathing. I do it because I'm driven to do it",
                 author: "Bob Dylan")
Quotation.create(quote: "When I was a kid, I worked in the circus. It was a touring circus that was owned by a man named Terrell Jacobs. It was just one big tent, and he was a lion tamer. He didn't have any kids, but the bit was that I would dress up as his son in an identical outfit",
                 author: "Christopher Walken")
Quotation.create(quote: "I used to suffer from a lot of regret while touring. Regret at having to leave certain places, people and situations, or just a beautiful day.",
                 author: "Kiri Te Kanawa")
Quotation.create(quote: "I make my money off of touring and merchandise. And I'm lucky I have really loyal fans that understand how it works and support.",
                 author: "Chance The Rapper")
Quotation.create(quote: "The touring was crazy, it was a lot of work. But I enjoyed it.",
                 author: "Adam Ant")

tour1 = Tour.create!(title: "Fall 2020 tour", start_date: "2020-09-12", end_date: "2020-12-14", user: user1)
tour2 = Tour.create!(title: "Fall 2021 tour", start_date: "2020-09-12", end_date: "2020-12-14", user: user2)

Member.create!(name: "Bob", role: "Bass", pay: 15, pay_by_percent: true, tour: tour1, musician: true, phone_number: "345-222-3452")
Member.create!(name: "Alice", role: "Drums", pay: 15, pay_by_percent: true, tour: tour1, musician: true, phone_number: "345-222-3452")
Member.create!(name: "Jim", role: "Merch", pay: 15, pay_by_percent: true, tour: tour1, musician: false, phone_number: "345-222-3452")
Member.create!(name: "Beth", role: "Manager", pay: 300, pay_by_percent: false, tour: tour1, musician: false, phone_number: "345-222-3452")

show1 = Show.create!(description: "First show!", pay: 400, date: "2020-09-12",
                     load_in: "17:30", set: "21:00", lodging: "Lincoln Intercontinental",
                     tour: tour1, expected_merch: 250, wifi_net: "Belkin09", wifi_pw: "Password01",
                     laundry: false, showers: true, contact_name: "Bruce Saverino", contact_email: "bruce0p@gmail.com",
                     contact_number: "378-233-4392", venue_website: "http://www.thebrick.com")
Address.create!(state: "Nebraska", city: "Lincoln", street_address: "345 Main st", show: show1)
show2 = Show.create!(pay: 200, date: "2020-10-10", load_in: "16:30", set: "20:00",
                     lodging: "Bob's uncle's house", tour: tour1, expected_merch: 35,
                     wifi_net: "Belkin09", wifi_pw: "Password01",
                     laundry: false, showers: true, contact_name: "Bruce Saverino", contact_email: "bruce0p@gmail.com",
                     contact_number: "378-233-4392", venue_website: "http://drout.com")
Address.create!(state: "Iowa", city: "Iowa City", street_address: "22 Falls st", show: show2)
show3 = Show.create!(description: "MPLS Calling Festival", pay: 700, date: "2020-10-3",
                     load_in: "17:00", set: "17:30", lodging: "Minneapolis Holiday Inn",
                     tour: tour1, expected_merch: 100,
                     wifi_net: "Belkin09", wifi_pw: "Password01",
                     laundry: false, showers: true, contact_name: "Bruce Saverino", contact_email: "bruce0p@gmail.com",
                     contact_number: "378-233-4392", venue_website: "http://www.partycenter.com")
Address.create!(state: "Minnesota", city: "Minneapolis", street_address: "2200 High st", show: show3)
