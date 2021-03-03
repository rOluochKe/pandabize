class Bicycle < ApplicationRecord
  has_many :order_items

  validates :name, :description, :price, :image_url, :user_id, presence: true
  validates :user_id, uniqueness: true

  WHEEL_SIZE = %w[15 17 19].freeze
  RIM_COLOR = %w[Blue Black Spotted].freeze
  SADDLE_COLOR = %w[Black Blue Brown].freeze
end
