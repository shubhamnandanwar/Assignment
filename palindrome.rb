class Palindrome
  def self.is_palindrome(input)
    length = input.length

    input[0, length / 2].each_char.with_index do |character,index|
      return false if input[index] != input[length - index - 1]
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
