class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    session[:counter] ||= 0
    @count = session[:counter] += 1
  end
end
