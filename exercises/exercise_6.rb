require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store 
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Michael", last_name: "Grills", hourly_rate: 100)
@store2.employees.create(first_name: "Juno", last_name: "Grills", hourly_rate: 40)
@store1.employees.create(first_name: "Isaiah", last_name: "Grills", hourly_rate: 50)
@store2.employees.create(first_name: "Sandra", last_name: "Grills", hourly_rate: 100)
@store2.employees.create(first_name: "Bob", last_name: "Harris", hourly_rate: 90)
@store1.employees.create(first_name: "Beth", last_name: "Harris", hourly_rate: 90)
@store1.employees.create(first_name: "Brian", last_name: "Harris", hourly_rate: 80)
@store2.employees.create(first_name: "Lyndsay", last_name: "Harris", hourly_rate: 80)
@store2.employees.create(first_name: "Ayla", last_name: "Harris", hourly_rate: 40)