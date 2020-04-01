class Admin::DashboardController < ApplicationController
  def show
    @categories = Category.count
    @products = Product.count
    # puts @categories.name
    # raise @products.inspect
  end
end
