require_relative 'sales_tax'
module SalesTaxCalculator

  include SalesTax

  SALES_TAX = 10.0
  IMPORT_TAX = 5.0

  def compute_tax_for_each_item(items)
    items.each do |item|
      item.sales_tax += item.price * SALES_TAX / 100 unless basic_sales_tax_free?(item.name)
      item.sales_tax += item.price * IMPORT_TAX / 100 if imported?(item.name)
      item.sales_tax = round_off_tax(item.sales_tax)
    end
  end

  def compute_total_tax_of_order(items)
    total_sales_tax = 0.0
    items.each do |item|
      total_sales_tax += item.sales_tax
    end
    total_sales_tax.round(2)
  end

  def compute_total_price_of_order(items)
    total_price = 0.0
    items.each{ |item| total_price += item.price + item.sales_tax } 
    total_price.round(2)
  end

  def compute_total_price_of_item(item)
    (item.price + item.sales_tax).round(2)
  end

  def round_off_tax(tax)
    tax = (tax*20).round
    tax/20.00
  end

end