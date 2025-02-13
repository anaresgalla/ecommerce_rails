class CartsController < ApplicationController
  before_action :set_current_cart

  def create
    @current_cart.cart_items.create(product_id: params[:product_id])
  end

  private

  def set_current_cart
    if session[:current_cart_id]
      @current_cart = Cart.find_by_secret_id(session[:current_cart_id])
    else
      @current_cart = Cart.create
      session[:current_cart_id] = @current_cart.secret_id
    end
  end
end
