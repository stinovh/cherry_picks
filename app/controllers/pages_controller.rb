class PagesController < ApplicationController
  def index
    @product = Product.all
  end

  def result
  end
end
