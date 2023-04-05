require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class ApparelValidator < ActiveModel::Validator
  def validate(record)
    unless record.mens_apparel == true || record.womens_apparel == true
      record.errors.add :apparel, "You got to sell men or womens apparel."
    end
  end
end

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40 }
  validates :hourly_rate, numericality: { less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end

class Store

  validates :name, length: {minimum: 3, message: "Name length must be larger than 3"}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, message: "Need a revenue more than 0."}
  validates_with ApparelValidator
end

puts "Give us a store name:"
@store_val = gets.chomp.to_s

new_store = Store.new
new_store.name = @store_val
puts new_store.invalid?
puts new_store.errors.messages # this displays the entire hash of messages

new_store.errors.each {|error| puts error.message} #this dislays each message.

new_store.save
