class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def create
    @order = Order.create(order_params)
    redirect_to @order
  end

  def show
    @user = current_user
    @order = Order.find(params[:id])
    @order.update(user: current_user)
    if(@order.user != current_user)
      redirect_to root_path
    end
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path, alert: "No order found."
  end

  private

  def order_params
    params.require(:order).permit(:product_id, :state, :amount_cents)
  end
end
