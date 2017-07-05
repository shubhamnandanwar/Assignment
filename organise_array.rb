class OrganiseArray
  def order_array(input_array)
    result_array = []
    result_array.push(input_array[0]) 
    input_array[1...input_array.length].each do |input_element|
      result_array.each_with_index do |result_element,result_index|
        if (input_element >= result_element && input_element >= 0) || (input_element <= result_element && result_element < 0)
          result_array.insert(result_index,input_element)
          break
        elsif result_index == result_array.length - 1
          result_array.push(input_element)
          break
        end
      end
    end
    result_array
  end
end

input_array = []
begin 
  puts("Enter an Integer\n")
  input = gets.chomp
  input_array.push(input.to_i)
  puts("Do you want to continue (y/n)")
  continue_input = gets.chomp
end while continue_input.eql? "y"

organise_array = OrganiseArray.new
puts "\n\n"
puts organise_array.order_array(input_array)
