class SalesTax
  
  TAX_FREE_ITEM = ["chocolate","book","pill"]
  SALES_TAX = 10.0
  IMPORT_TAX = 5.0
  
  def self.check_for_tax(items)
    items.each do |item|
      TAX_FREE_ITEM.each do |tax_free_item|
        if item[1].downcase.include? tax_free_item
          item[3] = false
          break
        end
      end
    end
  end

  def self.compute_tax(items)
    items.each do |item|
        item[4] += item[2] * SALES_TAX / 100 if item[3]
        item[4] += item[2] * IMPORT_TAX / 100 if item[1].downcase.include? "import"
        item[4] = (item[4]*20).round
        item[4] = item[4]/20.00
    end
  end

  def self.display_bill(items)
    total_bill = 0.0
    sales_tax = 0.0
    puts "\nBill"
    items.each do |item|
      item_total_cost = item[4] + item[2]
      puts "" + item[0].to_s + " " + item[1].to_s + " : " + "%.2f" % item_total_cost
      total_bill += item_total_cost
      sales_tax += item[4]
    end
    puts "Sales Tax : " + "%.2f" % (sales_tax.round(2)).to_s
    puts "Total : " + "%.2f" % (total_bill.round(2)).to_s
  end

end

puts "Enter Number of items purchased\n"
item_size = gets.chomp.to_i

width = 5
height = item_size
items = Array.new(height){Array.new(width)} 

puts "\nEnter Items"
item_size.times do |index|
  input = gets.chomp
  input = input.split(/^(\d+) +(\D+) +at +([0-9]\d*(\.\d+)?)$/)

  items[index][0] = input[1] #Quantity
  items[index][1] = input[2] #Item Name
  items[index][2] = input[3].to_f #Item price
  items[index][3] = true #Whether Sales tax is applicable
  items[index][4] = 0.0 #Sales Tax Amount
end

SalesTax.check_for_tax(items)
SalesTax.compute_tax(items)
SalesTax.display_bill(items)