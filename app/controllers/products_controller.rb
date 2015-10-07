class ProductsController < ApplicationController
  before_action :authenticate_company!, except: [:index]
  def index
    @products = current_company.products
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to profile_myproducts_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :delivery_date, :amount_funded, :amount_backers, :description, :campaign_platform, :company_id, :approved, :campaign_link, :on_platform)
  end
end