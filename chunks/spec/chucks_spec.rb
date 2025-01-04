# frozen_string_literal: true

require 'spec_helper'
require_relative '../chunks'

describe '#chunks' do
  test_cases = [
    { input: [[1, 2, 3, 4, 5], 2], expected: [[1, 2], [3, 4], [5]] },
    { input: [[1, 2, 3, 4, 5], 3], expected: [[1, 2, 3], [4, 5]] },
    { input: [[1, 2, 3, 4, 5], 1], expected: [[1], [2], [3], [4], [5]] },
    { input: [[1, 2, 3, 4, 5], 5], expected: [[1, 2, 3, 4, 5]] },
    { input: [[1, 2, 3, 4, 5], 6], expected: [[1, 2, 3, 4, 5]] }
  ]

  test_cases.each_with_index do |test_case, index|
    it "splits an array into chunks of a specified size (case #{index + 1})" do
      expect(chunks(*test_case[:input])).to eq(test_case[:expected])
    end
  end
end
