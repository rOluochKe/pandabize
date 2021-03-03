FactoryBot.define do
  factory :bicycle do
    name { Faker::Name.name }
    description { Faker::Lorem.paragraph }
    wheel_size { Faker::Number.between(from: 15, to: 30) }
    rim_color { Faker::Color.color_name }
    saddle_color { Faker::Color.color_name }
    price { Faker::Number.decimal(l_digits: 2) }
    image_url { Faker::Avatar.image(slug: 'my-own-slug', size: '50x50', format: 'jpg') }
    user_id { Faker::Number.digit }
  end
end
