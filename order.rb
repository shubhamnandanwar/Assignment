require_relative 'sales_tax_calculator'
require_relative 'items'
require_relative 'exempt_items'

require 'pry'

class Order
  
  include SalesTaxCalculator
  attr_accessor :items

  def initialize(items)
    @items = items
  end

  def display_bill
    compute_tax_for_each_item(items)
    puts "\nBill"
    @items.each{ |item| puts "#{item.quantity} #{item.name} : #{compute_total_price_of_item(item)}" }
    puts "Sales Tax : #{compute_total_tax_of_order(items)}"
    puts "Total : #{compute_total_price_of_order(items)}"
  end

end

items = Array.new
puts "Enter Items"
input = gets

until input == "\n"
  items.push(Item.new(input.split(" ")))
  input = gets
end
ExemptItems.new
order = Order.new(items)
order.display_bill
