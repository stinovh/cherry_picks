class PagesController < ApplicationController
  def index
    @products = Product.all.limit(4)
    @Most_funded_products = Product.order(amount_funded: :desc).limit(4)
    @Most_backers_products = Product.order(amount_backers: :desc).limit(4)

  end

  def result
  end
end
