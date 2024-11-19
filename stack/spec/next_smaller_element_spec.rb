# frozen_string_literal: true

require 'spec_helper'
require_relative '../next_smaller_element'

describe '#' do
  test_scenarios = [
    { array: [6, 1, 3, 67, 3, 1, 8], expected_result: [1, -1, 1, 3, 1, -1, -1] },
    { array: [4, 5, 3, 2, 1], expected_result: [3, 3, 2, 1, -1] },
    { array: [30, 3, 5, 19, 5, 13, 6, 1], expected_result: [3, 1, 1, 5, 1, 6, 1, -1] },
    { array: [2, 4, 0, 4, 9], expected_result: [0, 0, -1, -1, -1] }
  ]

  test_scenarios.each do |scenario|
    array = scenario[:array]
    expected_result = scenario[:expected_result]

    context("with provided array #{array.inspect}") do
      it 'finds the next smaller element in the array or returns -1 if it does not exist' do
        expect(next_smaller_element(array)).to eq(expected_result)
      end
    end
  end
end
