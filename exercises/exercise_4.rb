require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...


store3 = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
store4 = Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel:false, mens_apparel: true)
store5 = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@store_selling_mens_apparel = Store.where(mens_apparel:true).load;

@store_selling_mens_apparel.each do |record|
  puts record.name
end

