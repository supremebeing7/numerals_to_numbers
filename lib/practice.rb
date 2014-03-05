
def numerals_to_numbers(numerals)
  numerals.upcase!
  
  numerals.gsub!(/CM/, '900.')
  puts numerals
  numerals.gsub!(/M/, '1000.')
  puts numerals

  numerals.gsub!(/CD/, '400.')
  numerals.gsub!(/D/, '500.')
  
  numerals.gsub!(/XC/, '90.')
  numerals.gsub!(/C/, '100.')
  
  numerals.gsub!(/XL/, '40.')
  numerals.gsub!(/L/, '50.')
  
  numerals.gsub!(/IX/, '9.')
  numerals.gsub!(/X/, '10.')
  
  numerals.gsub!(/IV/, '4.')
  numerals.gsub!(/V/, '5.')
  numerals.gsub!(/I/, '1.')
  
  numbers_as_strings = numerals.split('.')
  numbers_as_integers = []
  numbers_as_strings.each do |number_string|
    numbers_as_integers << number_string.to_i
  end

  numbers_as_integers.inject(:+)
end

puts numerals_to_numbers("mcmlxXXiv")
