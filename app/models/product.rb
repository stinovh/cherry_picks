class Product < ActiveRecord::Base
  belongs_to :company
  has_one :category
  monetize :price_cents

  def self.search(query = {})
    # where(:title, query) -> This would return an exact match of the query
    # [["c1", query.amount],[]].reject {|x| x[1].present?}
    # [[]].map
    search_scope = self
    search_scope = where("products.amount_funded >= ?", "#{query.amount_funded}") if query.amount_funded.present?
    search_scope = search_scope.where("products.name LIKE ? OR products.name LIKE ?", "#{query.brand}", "#{query.brand.capitalize}") if query.brand.present?
    search_scope = search_scope.where("products.category_id = ?", "#{query.category}") if query.category.present?
    search_scope = search_scope.where("products.price_cents <= ?", "#{query.price}") if query.price.present?
    # activate when seeds are updated with delivery_dates
    search_scope = search_scope.where("products.delivery_date <= ?", "#{query.delivery_date}") if query.delivery_date.present?
    search_scope.where.instance_variable_get(:@scope)
  end
end
