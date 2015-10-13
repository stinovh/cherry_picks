class PagesController < ApplicationController
  def index
    @search = Search.new
    @categories = Category.all
  end

  def result
  end
end
