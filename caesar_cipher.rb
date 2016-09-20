
def caesar_cipher(user_input, shift_factor)

	values = user_input.map {|letter| letter.ord}

	values.map! do |value|
		if ((65..90) === value) || ((97..122) === value)
			value += shift_factor
			if value > 122 || (91..96) === value
				value -= 26
			else value = value
			end
		else value = value
		end
	end

	puts "Encrypted message:"
	puts values.map {|value| value.chr}.join
end

puts "Please enter a given amount of text to be encrypted via Caesar's Cipher."
user_input = gets.chomp.chars

puts "Please enter a shift factor."
shift_factor = gets.chomp.to_i

caesar_cipher(user_input, shift_factor)