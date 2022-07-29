class DashboardsController < ApplicationController
  before_action :set_user

  def index
    @users = User.find(params[:user_id])
    @products = Product.where(user_id: @user.id)
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
