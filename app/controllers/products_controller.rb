class ProductsController < ApplicationController
  def index
    if params[:query].present?
      @products = Product.search_by_name_and_category(params[:query])
    else
      @products = Product.all
    end
    @markers = @products.geocoded.map do |product|
      {
        lat: product.latitude,
        lng: product.longitude
      }
    end
  end

  def new
    @product = Product.new
    @booking = Booking.new
    @product.user = current_user
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
  end
end
