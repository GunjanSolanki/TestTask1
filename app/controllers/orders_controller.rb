class OrdersController < ApplicationController

  def index
    @orders ||= Order.includes(:order_items)
  end

  def new
    @order = Order.new
    @order.order_items.build
  end

  def create
    @order = Order.new(order_params)
    set_default_fulfiller
    if @order.save
      assign_order_to_fulfiller
      redirect_to root_path, notice: "Order Created!"
    else 
      render 'new'
    end
  end

  private

  def set_default_fulfiller
    @order.fulfiller = FulfillmentCenter.first
  end

  def order_params
    params.require(:order).permit(order_items_attributes: [:id, :product_id, :quantity, :_destroy])
  end

  def assign_order_to_fulfiller
    DistributionCenterProduct.any? do |dcp|
      if (dcp.product_id == order_params.dig(:order_items_attributes, '0', :product_id).to_i) 
        @fulfiller = DistributionCenter.find(dcp.distribution_center_id)
      end
    end
    @fulfiller = FulfillmentCenter.first if @fulfiller.nil?
    @order.update!( status: 1, fulfiller: @fulfiller )
  end
end
