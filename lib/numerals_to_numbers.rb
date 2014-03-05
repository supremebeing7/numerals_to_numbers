def numerals_to_numbers(numerals)
  numerals.upcase!

  numeral_pairs = {
    /I/ => '1.',
    /V/ => '5.',
    /IV/ => '4.', 
    /X/ => '10.',
    /IX/ => '9.',
    /L/ => '50.',
    /XL/ => '40.',
    /C/ => '100.',
    /XC/ => '90.',
    /D/ => '500.',
    /CD/ => '400.',
    /M/  => '1000.',
    /CM/ => '900.',
 }
    

  numeral_pairs.reverse_each do |key, value|
    numerals.gsub!(key, value)
    puts numerals  
  end

  numbers_as_strings = numerals.split('.')
  numbers_as_integers = []
  numbers_as_strings.each do |number_string|
    numbers_as_integers << number_string.to_i
  end

  numbers_as_integers.inject(:+)
end

puts numerals_to_numbers("mcmlxXXiv")

# numerals.gsub!(/CM/, '900.')
  # numerals.gsub!(/M/, '1000.')
  
  # numerals.gsub!(/CD/, '400.')
  # numerals.gsub!(/D/, '500.')
  
  # numerals.gsub!(/XC/, '90.')
  # numerals.gsub!(/C/, '100.')
  
  # numerals.gsub!(/XL/, '40.')
  # numerals.gsub!(/L/, '50.')
  
  # numerals.gsub!(/IX/, '9.')
  # numerals.gsub!(/X/, '10.')
  
  # numerals.gsub!(/IV/, '4.')
  # numerals.gsub!(/V/, '5.')
  # numerals.gsub!(/I/, '1.')

