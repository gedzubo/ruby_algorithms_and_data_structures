# frozen_string_literal: true

require 'spec_helper'
require_relative '../subarray_with_maximum_sum'

describe '#subarray_with_maximum_sum' do
  test_scenarios = [
    { array: [1, 2, 3, 4, 5, 6, 7], n: 3, expected_subarray: [5, 6, 7] },
    { array: [4, 5, 3, 2, 1], n: 2, expected_subarray: [4, 5] },
    { array: [1, 3, 5, 19, 5, 3, 6, 1], n: 2, expected_subarray: [5, 19] },
    { array: [-2, 4, 0, 4, -9], n: 3, expected_subarray: [4, 0, 4] }
  ]

  test_scenarios.each do |scenario|
    array = scenario[:array]
    n = scenario[:n]
    expected_subarray = scenario[:expected_subarray]

    context("with provided array #{array.inspect} and size (n) = #{n}") do
      it 'finds the subarray (of size n) with maximum sum' do
        expect(subarray_with_maximum_sum(array, n)).to eq(expected_subarray)
      end
    end
  end
end
