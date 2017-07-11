class Array
  def reverse_n
    length = self.length
    
    self[0, length / 2].each_with_index do |input_element,index|
      self[index], self[length - 1 - index] = self[length - 1 - index], self[index]
    end
  end
end

puts "Enter the size of the array\n"
n = gets.chomp.to_i
puts "\nEnter the Array Elements"
input = Array.new(n)

n.times do |index|
  input[index]=gets.chomp.to_i
end

puts "\n\nReverse of Array"
input.reverse_n
puts input
