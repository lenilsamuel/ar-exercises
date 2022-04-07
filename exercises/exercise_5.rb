require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

total_sales = Store.sum(:annual_revenue)
puts "Total sales is $#{total_sales}"

avg_sales = Store.average(:annual_revenue)
puts "Average sales are $#{avg_sales}"

# ans = Store.count(Store.where("stores.annual_revenue >= 1000000"))
ans = Store.where("stores.annual_revenue >= 1000000").count
puts "Number of stores with annual sales over $1M --> #{ans}"
