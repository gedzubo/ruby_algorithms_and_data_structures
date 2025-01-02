# frozen_string_literal: true

# Time complexity: O(n log n)
# Space complexity: O(log n)
def quick_sort(array, start_index = 0, end_index = array.length - 1)
  return array if start_index >= end_index

  pivot_index = pivot(array, start_index, end_index)
  quick_sort(array, start_index, pivot_index - 1)
  quick_sort(array, pivot_index + 1, end_index)

  array
end

def pivot(array, start_index, end_index)
  pivot = array[end_index]
  index = start_index - 1

  start_index.upto(end_index - 1) do |j|
    if array[j] < pivot
      index += 1
      swap(array, index, j)
    end
  end

  swap(array, index + 1, end_index)
  index + 1
end

def swap(array, first_index, second_index)
  temp = array[first_index]
  array[first_index] = array[second_index]
  array[second_index] = temp
end
