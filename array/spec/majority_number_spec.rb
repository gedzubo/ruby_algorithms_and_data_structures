# frozen_string_literal: true

require 'spec_helper'
require_relative '../majority_number'

describe '#majority_number' do
  test_cases = [
    { input: [1, 1, 2, 2, 2, 2, 3], expected: 2 },
    { input: [1, 2, 3, 4, 5], expected: 5 },
    { input: [1, 1, 1, 1, 1, 1, 1], expected: 1 },
    { input: [1, 2, 3, 4, 5, 6, 7], expected: 7 },
    { input: [1, 1, 1, 1, 1, 1, 2], expected: 1 }
  ]

  test_cases.each_with_index do |test_case, index|
    it "returns the majority number in the array (case #{index + 1})" do
      expect(majority_number(test_case[:input])).to eq(test_case[:expected])
    end
  end
end
