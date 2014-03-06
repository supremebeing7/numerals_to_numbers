def numerals_to_numbers(numeral)
  numeral.upcase!
  numbers_array = numeral.split('')

  numeral_pairs = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M'  => 1000
  }
  
  result = 0  
  numbers_array.each_with_index do |letter, index|
    result += numeral_pairs[letter] 
    if numbers_array[index + 1] != nil && numeral_pairs[ numbers_array[index] ] < numeral_pairs[ numbers_array[index + 1] ] 
      result -= numeral_pairs[ numbers_array[index] ] * 2
    end
  end
  result
end

puts numerals_to_numbers("mcmlxxxiv")

