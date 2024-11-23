# frozen_string_literal: true

# Find the sum of elements between start_index and end_index inside the provided integer array
def sum(array, start_index, end_index)
  # reusing existing array to create prefix sum array
  (1..array.size - 1).each do |index|
    array[index] += array[index - 1]
  end

  array[end_index] - array[start_index - 1]
end
