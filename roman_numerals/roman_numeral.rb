# frozen_string_literal: true

class RomanNumeral
  ROMAN_MAPPING = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def self.from_numer_to_roman_numeral(number)
    roman = ''

    ROMAN_MAPPING.each do |key, value|
      while number >= key
        roman += value
        number -= key
      end
    end

    roman
  end

  def self.from_roman_numeral_to_number(roman_numeral)
    number = 0

    ROMAN_MAPPING.each do |key, value|
      while roman_numeral.start_with?(value)
        number += key
        roman_numeral = roman_numeral.slice(value.length, roman_numeral.length)
      end
    end

    number
  end
end
