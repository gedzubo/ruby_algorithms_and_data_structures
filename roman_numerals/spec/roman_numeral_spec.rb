# frozen_string_literal: true

require 'spec_helper'
require_relative '../roman_numeral'

describe RomanNumeral do
  describe '.from_numer_to_roman_numeral' do
    it 'converts a number to a roman numeral' do
      expect(described_class.from_numer_to_roman_numeral(1)).to eq('I')
      expect(described_class.from_numer_to_roman_numeral(4)).to eq('IV')
      expect(described_class.from_numer_to_roman_numeral(5)).to eq('V')
      expect(described_class.from_numer_to_roman_numeral(9)).to eq('IX')
      expect(described_class.from_numer_to_roman_numeral(10)).to eq('X')
      expect(described_class.from_numer_to_roman_numeral(40)).to eq('XL')
      expect(described_class.from_numer_to_roman_numeral(50)).to eq('L')
      expect(described_class.from_numer_to_roman_numeral(90)).to eq('XC')
      expect(described_class.from_numer_to_roman_numeral(100)).to eq('C')
      expect(described_class.from_numer_to_roman_numeral(400)).to eq('CD')
      expect(described_class.from_numer_to_roman_numeral(9)).to eq('IX')
    end
  end

  describe '.from_roman_numeral_to_number' do
    it 'converts a roman numeral to a number' do
      expect(described_class.from_roman_numeral_to_number('I')).to eq(1)
      expect(described_class.from_roman_numeral_to_number('IV')).to eq(4)
      expect(described_class.from_roman_numeral_to_number('V')).to eq(5)
      expect(described_class.from_roman_numeral_to_number('IX')).to eq(9)
      expect(described_class.from_roman_numeral_to_number('X')).to eq(10)
      expect(described_class.from_roman_numeral_to_number('XL')).to eq(40)
      expect(described_class.from_roman_numeral_to_number('L')).to eq(50)
      expect(described_class.from_roman_numeral_to_number('XC')).to eq(90)
      expect(described_class.from_roman_numeral_to_number('C')).to eq(100)
      expect(described_class.from_roman_numeral_to_number('CD')).to eq(400)
      expect(described_class.from_roman_numeral_to_number('IX')).to eq(9)
    end
  end
end
