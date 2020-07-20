class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    byebug
  end

  private

  def order_params
    params.require(:order).permit(:amount, order_items_attributes: [:product_id])
  end
end
