class OrderItemSerializer
  include FastJsonapi::ObjectSerializer

  attributes :bicycle_id, :order_id, :unit_price, :quantity, :total_price

  cache_options enabled: true, cache_length: 12.hours
end
