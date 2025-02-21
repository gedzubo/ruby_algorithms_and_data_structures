# frozen_string_literal: true

require 'spec_helper'
require_relative '../remove_duplicate_pairs'

describe '#remove_duplicate_pairs' do
  test_cases = [
    { input: 'abcabc', expected: 'abcabc' },
    { input: 'aabbcc', expected: '' },
    { input: 'abbcdd', expected: 'ac' },
    { input: 'aaabbbccc', expected: 'abc' }
  ]

  test_cases.each_with_index do |test_case, index|
    it "removes duplicate pairs from the string (case #{index + 1})" do
      expect(remove_duplicate_pairs(test_case[:input])).to eq(test_case[:expected])
    end
  end
end
