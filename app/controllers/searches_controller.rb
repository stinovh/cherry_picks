class SearchesController < ApplicationController
  def index
  end

  def show
    @search = Search.find(params[:id])
    @results = Product.search(@search)
  end

  def new
    @search = Search.new
    @categories = Category.all
  end

  def create
    @search = Search.create(search_params)
    redirect_to show_search_path(@search)
  end

  private

  def search_params
    params.require(:search).permit(:amount_funded, :brand, :category)
  end
end
