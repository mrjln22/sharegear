class ProductsController < ApplicationController
  def index
<<<<<<< HEAD
    if params[:query].present?
      @products = Product.search_by_name_and_category(params[:query])
    else
    @products = Product.all
    end
  end

  def new
    @product = Product.new
=======
    @products = Product.all
  end

  def show
   # @Product = Product.find(params[:id])
>>>>>>> 20bb31285e6c746fc6c0b11f804393e9291a2bf7
  end
end
