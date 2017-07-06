class ArrayConcate
  def self.join_array(source_array,target_array)
    source_array.concat target_array
  end
end

puts "Enter the size of array 1\n"
array_size = gets.chomp.to_i
puts "\nEnter the Array Elements"
input_array_1=Array.new(array_size)

for input in (0...array_size)
  input_array_1[input]=gets.chomp
end


puts "\nEnter the size of array 2\n"
array_size = gets.chomp.to_i
puts "\nEnter the Array Elements"
input_array_2=Array.new(array_size)

for input in (0...array_size)
  input_array_2[input]=gets.chomp
end

puts "\n"
puts ArrayConcate.join_array(input_array_1, input_array_2)

