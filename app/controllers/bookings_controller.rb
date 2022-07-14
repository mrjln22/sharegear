class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.product = Product.find(params[:product_id])
    @booking.status = "pending"
    @booking.save
    redirect_to product_path(@booking.service), alert: 'Congratulations! You booked a product'
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :product_id, :date, :user_id)
  end
end
