class Bicycle < ApplicationRecord
  has_many :order_items

  validates :full_name, :description, :price, :image_url, presence: true

  WHEEL_SIZE = %w[15 17 19].freeze
  RIM_COLOR = %w[Blue Black Spotted].freeze
  SADDLE_COLOR = %w[Black Blue Brown].freeze
end
