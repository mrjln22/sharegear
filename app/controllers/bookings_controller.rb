class BookingsController < ApplicationController
  # before_action :set_user

  def index
    # @user = User.find(params[:user_id])
    # @bookings = Booking.where(user_id: @user.id)
    # @products = Product.where(user: current_user)
    # end

    if current_user.role == "owner"
      @bookings = current_user.bookings_as_owner
      @products = Product.where(user: current_user)
    end
    @customer_booking = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new()
    @product = Product.find(params[:product_id])
    # @booking.product = Product.find(params[:product_id])
    # @previous_booking = Booking.where(user: current_user, product: @product)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.product = Product.find(params[:product_id])
    @booking.status = "pending"
    if @booking.save!
      redirect_to products_path, alert: 'Congratulations! You have rented gear!'
    else
      render :new
    end
  end

  def update
    # @booking = Booking.find(params[:id])
    # @booking.update(booking_params)
    redirect_to products_path
  end

  def show
    @booking = Booking.new
    @product = Product.find(params[:product_id])
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :product_id, :date, :user_id)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
