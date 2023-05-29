class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show ]

  # GET /products or /products.json
  def index
    @products = Product&.all
    @categories = Category&.all
  end

  # GET /products/1 or /products/1.json
  def show
    @products = Product.find(params[:id])
  end

  def choose
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def product_params
    params.require(:product).permit(:name, :price, :image, :description, :category_id)
  end
end
