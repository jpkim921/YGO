class ItemsController < ApplicationController
  def index
    @order = Order.new
    session[:order_id] = @order.id

    @foods = Item.all.select{|item| item.category == "Food"}
    @beverages = Item.all.select{|item| item.category == "Beverage"}
  end
end
