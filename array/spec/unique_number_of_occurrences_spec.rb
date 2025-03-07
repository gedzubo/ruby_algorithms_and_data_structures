# frozen_string_literal: true

require 'spec_helper'
require_relative '../unique_number_of_occurrences'

describe '#unique_occurrences' do
  test_cases = [
    { input: [1, 2, 2, 1, 1, 3], expected: true },
    { input: [1, 2], expected: false },
    { input: [1, 2, 2, 1, 1, 3, 3, 3], expected: false },
    { input: [1, 2, 2, 1, 1, 3, 3, 3, 3], expected: true }
  ]

  test_cases.each_with_index do |test_case, index|
    it "checks if the number of occurrences of each element in an array is unique (case #{index + 1})" do
      expect(unique_occurrences(test_case[:input])).to eq(test_case[:expected])
    end
  end
end
