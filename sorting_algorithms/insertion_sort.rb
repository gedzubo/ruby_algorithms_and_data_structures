# frozen_string_literal: true

# Time complexity: O(n^2)
# Space complexity: O(1)
def insertion_sort(array)
  n = array.length

  1.upto(n - 1) do |i|
    temp = array[i]
    j = i - 1

    while j >= 0 && array[j] > temp
      array[j + 1] = array[j]
      j -= 1
    end

    array[j + 1] = temp
  end

  array
end
