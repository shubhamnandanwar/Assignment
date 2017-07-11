require 'yaml'
module SalesTax

  def basic_sales_tax_free?(item_name)
    exempt_free_item_file = YAML.load_file('config.yml')
    tax_free_item = Array.new
    tax_free_item += exempt_free_item_file["food"]
    tax_free_item += exempt_free_item_file["medicine"]
    tax_free_item += exempt_free_item_file["book"]
    tax_free_item.any?{ |item| item_name.include?(item)}
  end

  def imported? (item_name)
    item_name.downcase.include? "imported"
  end

end