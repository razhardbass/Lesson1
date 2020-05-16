# frozen_string_literal: true

letter_array = ('a'..'z').to_a
vowels_array = %w[a e i o u]
letter_hash = {}
i = 1
letter_array.each do |letter|
  letter_hash[letter] = i if vowels_array.include?(letter)
  i += 1
end
puts letter_hash
