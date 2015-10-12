class SearchesController < ApplicationController
  def index
  end

  def show
    @search = Search.find(params[:id])
    @results = Product.search(@search)
    @categories = [["All categories", nil]]
    Category.all.each do |category|
      @categories << [category.name, category.id]
    end
  end

  def new
    @search = Search.new
    @categories = Category.all
  end

  def create
    @search = Search.create(search_params)
    redirect_to show_search_path(@search)
  end

  def update
    @search = Search.find(params[:id])
    params[:search][:delivery_date] = Date.strptime(params[:search][:delivery_date],"%Y-%m-%d") if !params[:search][:delivery_date].empty?
    @search.update(search_params)
    redirect_to show_search_path(@search)
  end

  private

  def search_params
    params.require(:search).permit(:amount_funded, :brand, :category, :price, :delivery_date, :campaign_platform)
  end
end
