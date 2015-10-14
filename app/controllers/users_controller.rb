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

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :street_name, :house_number, :city, :zipcode, :country)
  end
end
