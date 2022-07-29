class ProductsController < ApplicationController
  # before_action :set_user
  before_action :set_product, only: %i[create update show destroy]

  def index
    if params[:query].present?
      @products = Product.search_by_name_and_category(params[:query])
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
    @booking = Booking.new
    @product.user = current_user
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to Product.find(params[:id])
    else
      render 'edit'
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :category, :price, :description)
  end

  def set_product
    @product = Product.find params[:id]
  end
end
