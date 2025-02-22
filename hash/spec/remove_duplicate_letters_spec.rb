# frozen_string_literal: true

require 'spec_helper'
require_relative '../remove_duplicate_letters'

describe '#remove_duplicate_letters' do
  test_cases = [
    { input: 'abcabc', expected: 'abc' },
    { input: 'aabbcc', expected: 'abc' },
    { input: 'abbcdd', expected: 'abcd' },
    { input: 'aaabbbccc', expected: 'abc' }
  ]

  test_cases.each_with_index do |test_case, index|
    it "removes duplicate letters from the string (case #{index + 1})" do
      expect(remove_duplicate_letters(test_case[:input])).to eq(test_case[:expected])
    end
  end
end
