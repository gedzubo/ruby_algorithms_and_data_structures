# frozen_string_literal: true

require 'spec_helper'
require_relative '../rotate_right'

describe '#rotate_right' do
  test_cases = [
    { input: [[1, 2, 3, 4, 5], 2], expected: [4, 5, 1, 2, 3] },
    { input: [[1, 2, 3, 4, 5], 3], expected: [3, 4, 5, 1, 2] },
    { input: [[1, 2, 3, 4, 5], 1], expected: [5, 1, 2, 3, 4] },
    { input: [[1, 2, 3, 4, 5], 5], expected: [1, 2, 3, 4, 5] },
    { input: [[1, 2, 3, 4, 5], 6], expected: [5, 1, 2, 3, 4] }
  ]

  test_cases.each_with_index do |test_case, index|
    it "rotates an array by a specified number of positions (case #{index + 1})" do
      expect(rotate_right(*test_case[:input])).to eq(test_case[:expected])
    end
  end
end
