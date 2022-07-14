class ProductsController < ApplicationController
  def index
    if params[:query].present?
      @products = Product.search_by_name_and_category(params[:query])
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
    @product.user = current_user
  end

  def show
    @product = Product.find(params[:id])
  end
end
