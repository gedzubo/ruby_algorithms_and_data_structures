# frozen_string_literal: true

# input: [1, 2, 3, 4, 5], 2
# output: [1, 3, 4, 5, 2]
def move_numbers_to_back(array, number = 0)
  return array if array.size == 1

  left = 0
  right = 0

  while right < array.length
    if array[left] == number && array[right] != number
      array[left], array[right] = array[right], array[left]
      left += 1
    end

    left += 1 if array[left] != number

    right += 1
  end

  array
end
