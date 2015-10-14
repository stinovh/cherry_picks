require 'open-uri'

class ProductsController < ApplicationController
  before_action :authenticate_company!, except: [:show]
  def index
    @products = current_company.products
  end

  def show
    @product = Product.find_by name: params[:name]
    @order = Order.new
    redirect_to '/', alert: "No product found with name: #{params[:name]}" unless @product
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def create
    params[:product][:delivery_date] = Date.strptime(params[:product][:delivery_date],"%Y/%m/%d") if params[:product][:delivery_date].present?
    array = parse_json_kickstarter(params[:product][:name]) if params[:product][:campaign_platform] == "Kickstarter"
    @product = Product.new(product_params)
    if array
      @product.picture_path = array[0]
      @product.amount_backers = array[1]
      @product.amount_funded = array[2]
    end

    if @product.save
      redirect_to profile_myproducts_path
    else
      redirect_to products_new_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def parse_json_kickstarter(product_name)
    parse_name = product_name.split(" ").join("-")
    api_url = "https://www.kickstarter.com/projects/search.json?search=&term=#{parse_name}"
    array = []
    open(api_url) do |stream|
      product = JSON.parse(stream.read)
      array << product['projects'][0]['photo']['full']
      array << product['projects'][0]['backers_count']
      array << product['projects'][0]['pledged']
    end
    return array
  end

  def product_params
    params.require(:product).permit(:name, :price, :delivery_date, :amount_funded, :amount_backers, :description, :campaign_platform, :company_id, :approved, :campaign_link, :on_platform, :category_id)
  end
end
