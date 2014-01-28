class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    session[:counter] ||= 0
    @count = session[:counter] += 1
  end
end
