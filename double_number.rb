class String
  def is_integer?
    return true if Integer(self) rescue false
  end

  def is_float?
    return true if Float(self) rescue false
  end
  
end

class DoubleElement
  def self.double_numbers(input)
    input.map! { |input_element|  /\A[-+]?\d+\z/ === input_element ? input_element.to_i*2:  /\d+[,.]\d+/ === input_element ? input_element.to_f * 2 : input_element}
  end

  def self.double_numbers_without_regex(input)
    input.map! do |input_element|
      if input_element.is_integer?
        input_element.to_i * 2
      elsif input_element.is_float?
        input_element.to_f * 2
      else
        input_element
      end
    end
  end
end

puts "Enter the size of the array\n"
array_size = gets.chomp.to_i
puts "\nEnter the Array Elements"
input_array=Array.new(array_size)

(0...array_size).each do |input|
  input_array[input] = gets.chomp
end


DoubleElement.double_numbers_without_regex(input_array)
puts "\n\n"
puts input_array
