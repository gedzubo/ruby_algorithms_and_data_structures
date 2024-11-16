# frozen_string_literal: true

# Find a subarray of size n with minimum sum
def subarray_with_minimum_sum(array, n)
  window_sum = array[0..n - 1].sum
  min_sum = window_sum
  min_sum_index = 0

  (1..array.size - n).each do |index|
    window_sum = window_sum - array[index - 1] + array[index - 1 + n]
    if window_sum < min_sum
      min_sum = window_sum
      min_sum_index = index
    end
  end

  array[min_sum_index..min_sum_index - 1 + n]
end
