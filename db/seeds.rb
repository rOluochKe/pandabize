# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Bicycle.create(
    name: Faker::Name.name,
    description: Faker::Lorem.paragraph,
    wheel_size: Faker::Number.between(from: 15, to: 30),
    rim_color: Faker::Color.color_name,
    saddle_color: Faker::Color.color_name,
    price: Faker::Number.decimal(l_digits: 2),
    image_url: Faker::Avatar.image(slug: "my-own-slug", size: "50x50", format: "jpg"),
    user_id: Faker::Number.digit,
  )
end