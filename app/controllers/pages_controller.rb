class PagesController < ApplicationController
  def home
    @categories = Category.all
    @category = Category.new
    @products = Product.all
  end
end
