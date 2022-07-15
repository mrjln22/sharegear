class BookingsController < ApplicationController
  def new
    @booking = Booking.new(booking_params)
    @product = Product.new
    @booking.product = Product.find(params[:product_id])
    # @previous_booking = Booking.where(user: current_user, product: @product)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.product = Product.find(params[:product_id])
    @booking.status = "pending"
    @booking.save
    redirect_to products_path, alert: 'Congratulations! You booked a product'
  end

  def show
    @booking = Booking.new
    @product = Product.find(params[:product_id])
  end

  private

  def booking_params
    params.permit(:status, :product_id, :date, :user_id)
  end
end
