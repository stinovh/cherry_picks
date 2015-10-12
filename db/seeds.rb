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
require 'date'

Category.create(name: "Technology")
Category.create(name: "Music")
Category.create(name: "Health")
Category.create(name: "Education")
Category.create(name: "Sports")
Category.create(name: "Gaming")
Category.create(name: "Fashion")
Category.create(name: "Comic")
Category.create(name: "Design")
Product.create(name: "SteadX", price: 110, delivery_date: Date.strptime("2015-10-08", "%Y/%m/%d"), amount_funded: 100000, amount_backers: 2300, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/1091165875/steadxp-the-future-of-video-stabilization", category_id: 1)
Product.create(name: "Jaswig", price: 399, delivery_date: Date.strptime("2015-11-20", "%Y/%m/%d"), amount_funded: 74031, amount_backers: 351, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/jaswig/jaswig-challenging-our-sitting-culture-one-desk-at", category_id: 3)
Product.create(name: "Travel Jacket", price: 200, delivery_date: Date.strptime("2015-12-20", "%Y/%m/%d"), amount_funded: 9192055, amount_backers: 44949, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/597538543/the-worlds-best-travel-jacket-with-15-features-bau", category_id: 7)
Product.create(name: "Ouya", price: 225, delivery_date: Date.strptime("2016-01-20", "%Y/%m/%d"), amount_funded: 8596474, amount_backers: 63416, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/ouya/ouya-a-new-kind-of-video-game-console", category_id: 6)
Product.create(name: "Zano", price: 225, delivery_date: Date.strptime("2016-02-20", "%Y/%m/%d"), amount_funded: 2335119, amount_backers: 12075, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/torquing/zano-autonomous-intelligent-swarming-nano-drone", category_id: 1)
