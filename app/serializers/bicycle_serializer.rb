class BicycleSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :description, :wheel_size, :rim_color, :saddle_color, :price, :image_url
end
