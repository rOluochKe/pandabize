class BicycleSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :wheel_size, :rim_color, :saddle_color, :price, :image_url, :user_id
end
