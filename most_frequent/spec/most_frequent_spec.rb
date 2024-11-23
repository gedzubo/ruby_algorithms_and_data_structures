# frozen_string_literal: true

require 'spec_helper'
require_relative '../most_frequent'

describe '#most_frequent' do
  test_scenarios = [
    { array: [1, 2, 1, 4, 4, 4, 7], k: 3, expected_array: [4, 1, 2] },
    { array: [4, 5, 3, 2, 1], k: 2, expected_array: [4, 5] },
    { array: [1, 3, 5, 19, 5, 3, 6, 1], k: 3, expected_array: [1, 3, 5] },
    { array: [1, 4, 4, 1, 9], k: 2, expected_array: [1, 4] }
  ]

  test_scenarios.each do |scenario|
    array = scenario[:array]
    k = scenario[:k]
    expected_array = scenario[:expected_array]

    context("with provided array #{array.inspect} and size (k) = #{k}") do
      it 'finds the most frequent elements in the array' do
        expect(most_frequent(array, k)).to eq(expected_array)
      end
    end
  end
end
