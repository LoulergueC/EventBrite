require 'faker'
Faker::Config.locale= 'fr'

User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.matz,
    email: "feummogeyoipou-1513@yopmail.fr",
    encrypted_password: "123456"
)
User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.matz,
    email: "cosucoddoubrau-2278@yopmail.fr",
    encrypted_password: "123456"
)
User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.matz,
    email: "quoinnaufroppoucru-2359@yopmail.fr",
    encrypted_password: "123456"
)
User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Quote.matz,
    email: "trehatreuvogra-9697@yopmail.fr",
    encrypted_password: "123456"
)

Event.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    description: Faker::Lorem.sentence(word_count: 20),
    start_date: Faker::Date.between(from: Date.today, to: Date.today + 10),
    duration: 30,
    price: 1,
    location: "Paris",
    organizer: User.find(1)
)
