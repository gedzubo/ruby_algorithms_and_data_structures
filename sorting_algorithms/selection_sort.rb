# frozen_string_literal: true

# Time complexity: O(n^2)
# Space complexity: O(1)
def selection_sort(array)
  n = array.length

  (n - 1).times do |i|
    min_index = i

    (i + 1).upto(n - 1) do |j|
      min_index = j if array[j] < array[min_index]
    end

    array[i], array[min_index] = array[min_index], array[i] if min_index != i
  end

  array
end
