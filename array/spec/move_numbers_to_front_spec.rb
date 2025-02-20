# frozen_string_literal: true

require 'spec_helper'
require_relative '../move_numbers_to_front'

describe '#move_numbers_to_front' do
  test_cases = [
    { input: [[1, 2, 3, 4, 2, 5], 2], expected: [2, 2, 3, 4, 1, 5] },
    { input: [[3, 1, 2, 3, 4, 5], 3], expected: [3, 3, 2, 1, 4, 5] },
    { input: [[1, 2, 1, 3, 4, 5], 1], expected: [1, 1, 2, 3, 4, 5] },
    { input: [[1, 2, 3, 4, 5], 1], expected: [1, 2, 3, 4, 5] },
    { input: [[1, 2, 3, 4, 5], 6], expected: [1, 2, 3, 4, 5] }
  ]

  test_cases.each_with_index do |test_case, index|
    it "moves the specified number to the front of the array (case #{index + 1})" do
      expect(move_numbers_to_front(*test_case[:input])).to eq(test_case[:expected])
    end
  end
end
