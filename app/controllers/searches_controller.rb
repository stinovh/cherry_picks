require 'open-uri'

class SearchesController < ApplicationController
  def index
  end

  def show
    @search = Search.find(params[:id])
    # redirect_to '/', alert: "No search found, please search again." unless @search
    @results = Product.search(@search).order(price_cents: :desc)
    @categories = [["All categories", nil]]
    Category.all.each do |category|
      @categories << [category.name, category.id]
    end
    rescue ActiveRecord::RecordNotFound
      redirect_to root_path, alert: "No search found, please search again."
  end

  def create
    @search = Search.create(search_params)
    redirect_to show_search_path(@search)
  end

  def update
    @search = Search.find(params[:id])
    params[:search][:delivery_date] = Date.strptime(params[:search][:delivery_date],"%Y-%m-%d") if params[:search][:delivery_date].present?
    @search.update(search_params)
    redirect_to show_search_path(@search)
  end

  private

  # def parse_json_kickstarter(product_name)
  #   parse_name = product_name.split(" ").join("-")
  #   api_url = "https://www.kickstarter.com/projects/search.json?search=&term=#{parse_name}"
  #   open(api_url) do |stream|
  #     product = JSON.parse(stream.read)
  #     return product['projects'][0]['photo']['full']
  #   end
  # end

  def search_params
    params.require(:search).permit(:amount_funded, :brand, :category, :price, :delivery_date, :campaign_platform)
  end
end
