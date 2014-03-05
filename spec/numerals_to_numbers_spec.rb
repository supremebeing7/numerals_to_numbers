require 'rspec'
require 'numerals_to_numbers'

describe('numerals_to_numbers') do
  it('returns the number equivalent of a single roman numeral character') do
    numerals_to_numbers("I").should(eq(1))
  end

  it('returns the number equivalent of two roman numeral characters') do
    numerals_to_numbers("XI").should(eq(11))
  end

  it('returns the number equivalent of three roman numeral characters') do
    numerals_to_numbers("MCM").should(eq(1900))
  end

  it('returns the number equivalent of four roman numeral characters') do
    numerals_to_numbers("LVII").should(eq(57))
  end
  
  it('returns the number equivalent of five roman numeral characters') do
    numerals_to_numbers("MMXCI").should(eq(2091))
  end
  
  it('returns the number equivalent of six roman numeral characters') do
    numerals_to_numbers("dcxcii").should(eq(692))
  end
  
  it('returns the number equivalent of seven roman numeral characters') do
    numerals_to_numbers("MdccxLV").should(eq(1745))
  end
  
  it('returns the number equivalent of eight roman numeral characters') do
    numerals_to_numbers("CCLXXVII").should(eq(277))
  end
  
  it('returns the number equivalent of nine roman numeral characters') do
    numerals_to_numbers("MMDCCCLXX").should(eq(2870))
  end

  it('returns the number equivalent of ten roman numeral characters') do
    numerals_to_numbers("MMmcdVIII").should(eq(3408))
  end
end
