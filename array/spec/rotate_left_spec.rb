# frozen_string_literal: true

require 'spec_helper'
require_relative '../rotate_left'

describe '#rotate_left' do
  test_cases = [
    { input: [[1, 2, 3, 4, 5], 2], expected: [3, 4, 5, 1, 2] },
    { input: [[1, 2, 3, 4, 5], 1], expected: [2, 3, 4, 5, 1] },
    { input: [[1, 2, 3, 4, 5], 6], expected: [2, 3, 4, 5, 1] }
  ]

  test_cases.each_with_index do |test_case, index|
    it "rotates the array to the left by the specified number of elements (case #{index + 1})" do
      expect(rotate_left(*test_case[:input])).to eq(test_case[:expected])
    end
  end
end
