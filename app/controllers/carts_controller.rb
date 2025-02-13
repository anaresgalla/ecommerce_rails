class CartsController < ApplicationController
  def create
    @current_cart.cart_items.create(product_id: params[:product_id])
  end

  def show
  end
end
