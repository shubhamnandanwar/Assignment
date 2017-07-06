class DoubleElement
  def self.double_numbers(input)
    input.map! { |input_element|  /\A[-+]?\d+\z/ === input_element ? input_element.to_i*2:  /\d+[,.]\d+/ === input_element ? input_element.to_f * 2 : input_element}
  end
end

puts "Enter the size of the array\n"
array_size = gets.chomp.to_i
puts "\nEnter the Array Elements"
input_array=Array.new(array_size)

for input in (0...array_size)
  input_array[input]=gets.chomp
end


DoubleElement.double_numbers(input_array)
puts "\n\n"
puts input_array
