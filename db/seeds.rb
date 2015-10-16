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
Product.create(name: "Mogees", price_cents: 76000, delivery_date: Date.new(2015,10,11), amount_funded: 52506, amount_backers: 581, company_id: 1, description: "Mogees gives you an entire world of new creative possibilities. Just stick the Mogees sensor to anything around you and play the world!", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/1196274831/mogees", category_id: 1, picture_path:"https://ksr-ugc.imgix.net/projects/2099061/photo-original.jpg?v=1444309488&w=560&h=420&fit=crop&auto=format&q=92&s=f80e5d714040bdaff5a5303cd26cd726")
Product.create(name: "Blocks", price_cents: 160000, delivery_date: Date.new(2015,10,11), amount_funded: 52506, amount_backers: 581, company_id: 1, description: "The strap is made of several modules, each with their own function. Choose the modules you want to build a smartwatch unique to you", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/2106691934/blocks-the-worlds-first-modular-smartwatch", category_id: 1, picture_path: "https://ksr-ugc.imgix.net/projects/2123439/photo-original.jpg?v=1444782103&w=560&h=420&fit=crop&auto=format&q=92&s=083a4651582addb6370463bc9ccfac34")
Product.create(name: " The Radical Magic of Pleasure and Pop ", price_cents: 7000, delivery_date: Date.new(2015,10,11), amount_funded: 25877, amount_backers: 671, company_id: 1, description: "A soulful, playful, hedonistic pop record for smart, ferocious, muffin-hearted libertines. ", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/carsieblanton/the-radical-magic-of-pleasure-and-pop", category_id: 2, picture_path:"https://ksr-ugc.imgix.net/projects/2008928/photo-original.jpg?v=1444081407&w=560&h=420&fit=crop&auto=format&q=92&s=031d534bd1d57677882466c721a9d9f5")
Product.create(name: " Food As Medicine", price_cents: 20000, delivery_date: Date.new(2015,10,11), amount_funded: 17894, amount_backers: 327, company_id: 1, description: "Join us for the journey of food, health, community, and hope.", campaign_platform: "Kickstarter", campaign_link: " https://www.kickstarter.com/projects/foodasmedicine/food-as-medicine-a-documentary-film-about-healing", category_id: 3, picture_path:"https://ksr-ugc.imgix.net/projects/2037838/photo-original.png?v=1443462019&w=560&h=420&fit=crop&auto=format&q=92&s=d91e571e5eef47e1f7c61f4eb9004868")
Product.create(name: " Simply Silver Pillows ", price_cents: 58000, delivery_date: Date.new(2015,10,11), amount_funded: 18678, amount_backers: 319, company_id: 1, description: "Simply Silver Pillows are a favorite with Hotels and Consumers, now we are creating a children’s line and moving production to the USA!", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/77674372/simply-silvertm-pillows-exceptional-comfort-and-he ", category_id: 3, picture_path:"https://ksr-ugc.imgix.net/projects/2035941/photo-original.jpg?v=1440114451&w=560&h=420&fit=crop&auto=format&q=92&s=0ee59ae537fe35c5aa858c504c033faf")
Product.create(name: " MEATER ", price_cents: 45000, delivery_date: Date.new(2015,10,11), amount_funded: 565586, amount_backers: 4542, company_id: 1, description: "Meater is the only wire-free meat thermometer that will guarantee perfectly cooked meats every time you cook.", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/1977846026/meater-the-first-truly-wireless-smart-meat-thermom ", category_id: 2, picture_path:"https://ksr-ugc.imgix.net/projects/1445536/photo-original.jpg?v=1441675978&w=560&h=420&fit=crop&auto=format&q=92&s=03d2651673222d9c26fedb6fe11e084f")
Product.create(name: " SNOOZ", price_cents: 7000, delivery_date: Date.new(2015,10,11), amount_funded: 395856, amount_backers: 4961, company_id: 1, description: "With a real fan inside, SNOOZ is an ultra-portable sound conditioner that turns your bedroom into a haven for sleep.", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/snooz/snooz-sound-sleep", category_id: 1, picture_path:"https://ksr-ugc.imgix.net/projects/165620/photo-original.png?v=1444797751&w=560&h=420&fit=crop&auto=format&q=92&s=9ea427198f4b96b2489c43d17b4c2c93")
Product.create(name: "Skreens", price_cents: 179000, delivery_date: Date.new(2015,10,11), amount_funded: 345187, amount_backers: 914, company_id: 1, description: "A revolutionary way to show all of your devices together on one display in 1080p/60 with no lag — just plug, play and play.", campaign_platform: "Kickstarter", campaign_link: "https://www.kickstarter.com/projects/1283573988/skreens-lets-every-device-stream-at-once-with-no-l ", category_id: 1, picture_path:"https://ksr-ugc.imgix.net/projects/1009028/photo-original.png?v=1444406231&w=560&h=420&fit=crop&auto=format&q=92&s=55b67f7be9f429edec48d9f3048d3e6d")


Order.create(state: "pending", user_id: 1, product_id: 2, amount_cents: 39900)
