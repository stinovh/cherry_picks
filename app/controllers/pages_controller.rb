class PagesController < ApplicationController
  def index
    @search = Search.new
    @categories = Category.all
    if Product.where(category_id: 1).present?
      @results_tech = Product.where(category_id: 1).limit(3)
    else
      @results_tech = Product.all.limit(3)
    end
    if Order.all.present?
      @results_popular = find_popular
    else
      @results_popular = Product.all.limit(3)
    end
  end

  def result
  end

  private
  def find_popular
    orders = Order.all.map{|x| x.product_id}
    counted = Hash[orders.group_by {|x| x}.map {|k,v| [k,v.count]}].sort_by{|k, v| v}.reverse.first(3).map{|array| array[0]}
    Product.where(id: counted)
  end
end
