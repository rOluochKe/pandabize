class BicycleSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :description, :wheel_size, :rim_color, :saddle_color, :price, :image_url, :user_id

  cache_options enabled: true, cache_length: 12.hours
end
