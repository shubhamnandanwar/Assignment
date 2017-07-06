class CharacterFrequency
	def self.calculate_frequency(input)
		frequency_hash = Hash.new
		frequency_hash.default = 0
		input.each_char do |input_element|
			frequency_hash[input_element] += 1
		end
		frequency_hash
	end
end

puts("Enter a String\n")
input = gets.chomp

puts CharacterFrequency.calculate_frequency(input)