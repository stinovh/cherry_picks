# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Category.create(name: "Technology")
# Category.create(name: "Music")
# Category.create(name: "Health")
# Category.create(name: "Education")
# Category.create(name: "Sports")
# Category.create(name: "Gaming")
# Category.create(name: "Fashion")
# Category.create(name: "Comic")
# Category.create(name: "Design")

10.times do
  Product.create(name: "SteadX", price: 110, amount_funded: 100000, amount_backers: 2300, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/1091165875/steadxp-the-future-of-video-stabilization")
end
