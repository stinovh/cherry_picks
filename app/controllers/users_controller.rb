class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user.update(user_params)
    redirect_to myprofile_path
  end

  def update_before_order
    @order =current_user.orders.last
    @user = current_user
    if @user.update(user_params)
      redirect_to new_order_payment_path(@order)
    else
      redirect_to order_path(@order), alert: "Could not save your details, please try again"
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :street_name, :house_number, :city, :zipcode, :country)
  end
end
