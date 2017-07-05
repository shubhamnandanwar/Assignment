class Palindrome
	def is_palindrome(input_string)
		array_length = input_string.length - 1
		reverse_string = ""
		input_string.each_char.with_index do |array_char,index|
			 reverse_string += input_string[array_length - index]
		end
		return true if input_string == reverse_string
		return false
	end	
end

puts("Enter an String\n")
input_string = gets.chomp

palindrome = Palindrome.new
if palindrome.is_palindrome(input_string)
 puts "#{input_string} is a palindrome"
else
 puts "#{input_string} is not a palindrome"
end
