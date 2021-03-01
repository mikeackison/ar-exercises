require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales.
# Hint: Chain together where and size (or count) Active Record methods.

# NOTE: A single string, without additional arguments, is passed to the query constructor
# as an SQL fragment, and used in the where clause of the query.

total_revenue = Store.sum(:annual_revenue)
avg_revenue = Store.average(:annual_revenue)
busy_stores = Store.where("annual_revenue >= 1000000").count

puts "TOTAL REVENUE All STORES----> #{total_revenue}"

puts "AVERAGE REVENUE ALL STORES ---->#{avg_revenue}"

puts "NUMBER OF STORES OVER 1M-----> #{busy_stores}"
