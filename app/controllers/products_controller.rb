class ProductsController < ApplicationController
  before_action :set_user

  def index
    if params[:query].present?
      @products = Product.search_by_name_and_category(params[:query])
    else
      @products = Product.all
    end
  end

  def star
    @products = Product.where(user_id: @user.id)
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
    @product = Product.find(params[:id])
    @booking = Booking.new
  end
end

private

  def product_params
    params.require(:product).permit(:name, :category, :price, :description)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
