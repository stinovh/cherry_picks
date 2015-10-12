class ProductsController < ApplicationController
  before_action :authenticate_company!
  def index
    @products = current_company.products
  end

  def show
    @product = Product.find_by name: params[:name]

    redirect_to '/', alert: "No product found with name: #{params[:name]}" unless @product
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    params[:product][:delivery_date] = Date.strptime(params[:product][:delivery_date],"%Y/%m/%d") if params[:product][:delivery_date].present?
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
    params.require(:product).permit(:name, :price, :delivery_date, :amount_funded, :amount_backers, :description, :campaign_platform, :company_id, :approved, :campaign_link, :on_platform, :category_id)
  end
end
