class Palindrome
  def self.is_palindrome(input)
    array_length = input.length - 1

    input[0, input.length / 2].each_char.with_index do |array_char,index|
      return false if input[index] != input[array_length - index]
    end
    true
  end 
end

puts("Enter an String\n")
input = gets.chomp

if Palindrome.is_palindrome(input)
 puts "#{input} is a palindrome"
else
 puts "#{input} is not a palindrome"
end
