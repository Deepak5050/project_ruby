def translate (words)
	vowels = ['a', 'e', 'i', 'o', 'u']
	final_words = []
	words_array = words.split(' ')

	words_array.each do | word |
		char_pos = 0
		if vowels.include? word[0]
			final_words << word + 'ay'

		else
			loop do

				if word.slice(char_pos, 2) == "qu"
						word[word.length] = 'qu'
						char_pos += 2

				else
					word[word.length] = word[char_pos]
						char_pos += 1
				end
				break if vowels.include? word[char_pos]
			end
			final_words << (word.slice(char_pos, word.length) + 'ay')
		end
	end
	final_words.join(' ')
end

translate('banana')