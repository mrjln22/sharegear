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
  end

  def show
   # @Product = Product.find(params[:id])
  end
end
