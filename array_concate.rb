class ArrayConcate
  def self.join_array(source_array,target_array)
    target_array.each do |target_element|
      source_array.push(target_element)
    end
    source_array
  end
end

puts "Enter the size of array 1\n"
array_size = gets.chomp.to_i
puts "\nEnter the Array Elements"
first_input=Array.new(array_size)

(0...array_size).each do |input|
  first_input[input]=gets.chomp
end


puts "\nEnter the size of array 2\n"
array_size = gets.chomp.to_i
puts "\nEnter the Array Elements"
second_input=Array.new(array_size)

(0...array_size).each do |input|
  second_input[input]=gets.chomp
end

puts "\n"
puts ArrayConcate.join_array(first_input, second_input)

