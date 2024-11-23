# frozen_string_literal: true

require 'spec_helper'
require_relative '../subarray_sum'

describe '#sum' do
  test_scenarios = [
    { array: [1, 4, 5, 6, 3, 6, 7], start_index: 3, end_index: 6, expected_sum: 22 },
    { array: [4, 5, 3, 2, 1], start_index: 1, end_index: 4, expected_sum: 11 },
    { array: [1, 3, 5], start_index: 1, end_index: 1, expected_sum: 3 },
    { array: [-2, 4, 0, 4, -9], start_index: 2, end_index: 4, expected_sum: -5 }
  ]

  test_scenarios.each do |scenario|
    array = scenario[:array]
    start_index = scenario[:start_index]
    end_index = scenario[:end_index]
    expected_sum = scenario[:expected_sum]

    context("with provided array #{array.inspect} and start_index = #{start_index} + end_index = #{end_index}") do
      it 'finds the sum of the elements in the sub array' do
        expect(sum(array, start_index, end_index)).to eq(expected_sum)
      end
    end
  end
end
