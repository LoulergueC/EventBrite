require 'faker'
Faker::Config.locale= 'fr'

User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.matz,
    email: "event1@yopmail.fr",
    password: "123456"
)
User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.matz,
    email: "event2@yopmail.fr",
    password: "123456"
)
User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.matz,
    email: "event3@yopmail.fr",
    password: "123456"
)
User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.matz,
    email: "event4@yopmail.fr",
    password: "123456"
)

10.times do |i|
    Event.create!(
        title: Faker::Company.bs,
        description: Faker::Quote.matz,
        start_date: Faker::Date.between(from: Date.today+1, to: Date.today + 20),
        duration: 30,
        price: rand(1..200),
        location: Faker::Address.city,
        organizer: User.all.sample,
        picture: "https://loremflickr.com/640/480/abstract"
    )
end
