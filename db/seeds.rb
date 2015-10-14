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
Company.create(email: "test@email.com", password: "testtest", name: "testcompany")
User.create(user_name: "stinovh", email: "user@email.com", password: "testtest")
Category.create(name: "Technology")
Category.create(name: "Music")
Category.create(name: "Health")
Category.create(name: "Education")
Category.create(name: "Sports")
Category.create(name: "Gaming")
Category.create(name: "Fashion")
Category.create(name: "Comic")
Category.create(name: "Design")
Product.create(name: "SteadXP", price_cents: 11000, delivery_date: Date.new(2015,10,8), amount_funded: 100000, amount_backers: 2300, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/1091165875/steadxp-the-future-of-video-stabilization", category_id: 1, picture_path:"https://ksr-ugc.imgix.net/projects/2022453/photo-original.jpg?v=1444677261&w=560&h=420&fit=crop&auto=format&q=92&s=9edf6a393d6da8b9e66f2132b8f59353")
Product.create(name: "Jaswig", price_cents: 39900, delivery_date: Date.new(2015,11,20), amount_funded: 74031, amount_backers: 351, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/jaswig/jaswig-challenging-our-sitting-culture-one-desk-at", category_id: 3, picture_path:"https://ksr-ugc.imgix.net/projects/1963827/photo-original.jpg?v=1439932492&w=560&h=420&fit=crop&auto=format&q=92&s=3aa8246bb0fb8e0ac33ee8dc43615cf2")
Product.create(name: "Travel Jacket", price_cents: 20000, delivery_date: Date.new(2015,12,20), amount_funded: 9192055, amount_backers: 44949, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/597538543/the-worlds-best-travel-jacket-with-15-features-bau", category_id: 7, picture_path:"https://ksr-ugc.imgix.net/projects/1895274/photo-original.png?v=1441294598&w=560&h=420&fit=crop&auto=format&q=92&s=a2a1998c7bba488f17bf53f8e3b9c56d")
Product.create(name: "Zano", price_cents: 22500, delivery_date: Date.new(2016,02,20), amount_funded: 2335119, amount_backers: 12075, company_id: 1, description: "Great product", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/torquing/zano-autonomous-intelligent-swarming-nano-drone", category_id: 1, picture_path:"https://ksr-ugc.imgix.net/projects/1388363/photo-original.jpg?v=1420730394&w=560&h=420&fit=crop&auto=format&q=92&s=75eed701397b127565c80d94418174d3")
Order.create(state: "pending", user_id: 1, product_id: 2, amount_cents: 39900)
