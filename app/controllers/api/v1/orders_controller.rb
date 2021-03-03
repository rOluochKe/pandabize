class Api::V1::OrdersController < Api::V1::ApiController
  def show
    @order_items = current_order.order_items
    render json: @order_items
  end
end
