class BookingsController < ApplicationController
  before_action :set_user

  def index
    @user = User.find(params[:user_id])
    @bookings = Booking.where(user_id: @user.id)
  end

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
    if @booking.save
      redirect_to products_path, alert: 'Congratulations! You booked a product'
    else
      render :new, date: :unprocessible_entity
    end
  end

  def show
    @booking = Booking.new
    @product = Product.find(params[:product_id])
  end

  private

  def booking_params
    params.permit(:status, :product_id, :date, :user_id)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
