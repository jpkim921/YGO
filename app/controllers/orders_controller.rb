class OrdersController < ApplicationController
  def new
    # @order = Order.new
    # session[:order_id] = @order.id
    redirect_to items_path
  end

  def create
  end
end
