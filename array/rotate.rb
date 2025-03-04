# frozen_string_literal: true

# input [1, 2, 3, 4, 5], 2
# output [4, 5, 1, 2, 3]
def rotate(array, shift_by)
  return array if array.size == 1

  (1..shift_by).each do
    array.unshift(array.pop)
  end

  array
end
