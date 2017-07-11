class Item
  
  attr_accessor :name, :quantity, :price, :sales_tax

  def initialize(input_item)
    @name = extract_name(input_item)
    @quantity = input_item[0].to_i
    @price , @sales_tax = input_item[-1].to_f, 0.0
  end

  def extract_name(input_item)
    name =  input_item.slice(1, input_item.length - 3).join(" ")
    name = "imported " + name if name.gsub!("imported ","")
    name
  end

end