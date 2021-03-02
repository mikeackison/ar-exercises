require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure,
# you'll find that it has a store_id (integer) column.
# This is a column that identifies which store each employee belongs to. It points to the id (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the store_id column.

# Add the following code directly inside the Store model (class): has_many :employees
# Add the following code directly inside the Employee model (class): belongs_to :store
# Add some data into employees. Here's an example of one (note how it differs from how
# you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
# Go ahead and create some more employees using the create method.
# You can do this by making multiple calls to create (like you have before.)
# No need to assign the employees to variables though.
# Create them through the @store# instance variables that you defined in previous exercises.
# Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Mike", last_name: "Ackison", hourly_rate: 40)
@store1.employees.create(first_name: "Mark", last_name: "Anderson", hourly_rate: 40)
@store1.employees.create(first_name: "Danny", last_name: "Brown", hourly_rate: 60)
@store1.employees.create(first_name: "Action", last_name: "Bronson", hourly_rate: 40)
@store1.employees.create(first_name: "Don", last_name: "Johnson", hourly_rate: 40)

@store2.employees.create(first_name: "Joan", last_name: "Jett", hourly_rate: 60)
@store2.employees.create(first_name: "Suzi", last_name: "Quatro", hourly_rate: 40)
@store2.employees.create(first_name: "Cherry", last_name: "Bomb", hourly_rate: 40)
@store2.employees.create(first_name: "Frankie", last_name: "Leggo", hourly_rate: 60)
@store2.employees.create(first_name: "Barry", last_name: "White", hourly_rate: 40)
@store2.employees.create(first_name: "Susan", last_name: "Jones", hourly_rate: 40)
