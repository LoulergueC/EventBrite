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

10.times do |i|
    Event.create!(
        title: Faker::Quote.yoda,
        description: Faker::Quote.matz,
        start_date: Faker::Date.between(from: 5.days.ago, to: Date.today + 10),
        duration: 30,
        price: rand(1..1000),
        location: Faker::Address.city,
        organizer: User.all.sample,
        picture: "https://loremflickr.com/640/480/abstract"
    )
end
