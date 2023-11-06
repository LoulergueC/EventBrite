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