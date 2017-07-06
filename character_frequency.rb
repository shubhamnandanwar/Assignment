class CharacterFrequency
	def self.calculate_frequency(input)
		frequency = Hash.new
		frequency.default = 0
		input.each_char do |input_element|
			frequency[input_element] += 1
		end
		frequency
	end
end

puts("Enter a String\n")
input = gets.chomp

puts CharacterFrequency.calculate_frequency(input)