def translate(str)
	vowels = ["a", "e", "i", "o", "u"]
	consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	
	## word begins with vowel
	if vowels.any? { |word| str[0].include?(word) }
		"#{str}" + "ay"

	## word begins with 1 consonant (Broken by  two consonants)
	elsif !vowels.any? { |word| str[0].include?(word) } && consonant.any? { |word| str[0].include?(word) }
		str.sub(str[0],'') + str[0]+ "ay"

	## word begins with two consonants (Borken by three consonants)
	elsif !vowels.any? { |word| str[0].include?(word) } && consonant.any? { |word| str[0..1].include?(word) }
		str.sub(str[0..1],'') + str[0..1] + "ay"

	## word begins with three consonants (Breaks above)
	else !vowels.any? { |word| str[0].include?(word) } && consonant.any? { |word| str[0..2].include?(word) }
		str.sub(str[0..2],'') + str[0..2] + "ay"
	end
end
