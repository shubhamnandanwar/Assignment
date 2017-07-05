class OrganiseArray
	def order_array(input_array)
		result_array = []
		input_array.each do |input_array_element|
			flag = true
			result_array.each_with_index do |result_array_element,result_array_index|
				if (input_array_element >= result_array_element && input_array_element >= 0) || (input_array_element <= result_array_element && result_array_element < 0)
					result_array.insert(result_array_index,input_array_element)
					flag = false
					break
				end
			end
			result_array.push(input_array_element) if flag
		end
		return result_array
	end

	
end

input_array = []
begin 
 	puts("Enter an Integer\n")
 	input_integer = gets.chomp
	input_array.push(input_integer.to_i)
	puts("Do you want to continue (y/n)")
	res = gets.chomp
end while res.eql? "y"
puts "\n\n"

organiseArray = OrganiseArray.new

puts organiseArray.order_array(input_array)
