# frozen_string_literal: true

# Find a subarray of size n with maximum sum
def subarray_with_maximum_sum(array, n)
  window_sum = array[0..n - 1].sum
  max_sum = window_sum
  max_sum_index = 0

  (1..array.size - n).each do |index|
    window_sum = window_sum - array[index - 1] + array[index - 1 + n]
    if window_sum > max_sum
      max_sum = window_sum
      max_sum_index = index
    end
  end

  array[max_sum_index..max_sum_index - 1 + n]
end
