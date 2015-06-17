# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
provider1 = Provider.create!(name: "api_provider1")
Provider.create!(name: "api_provider2")

provider1.services.create!(name: "api1", price: 10, amount: 100, on_sale: true)
provider1.services.create!(name: "api2", price: 100, amount: 9999, on_sale: true)

user1 = User.create!(name: "liupeng")

user1.user_services.create!(service_id: 1)
user1.user_services.create!(service_id: 2)

UserService.create!(user_id: 1, service_id: 1)


