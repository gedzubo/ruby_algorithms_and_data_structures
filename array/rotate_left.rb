# frozen_string_literal: true

# input [1, 2, 3, 4, 5], 2
# output [3, 4, 5, 1, 2]
def rotate_left(array, shift_by)
  return array if array.size == 1

  (1..shift_by).each do
    array.push(array.shift)
  end

  array
end
