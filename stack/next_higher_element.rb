# frozen_string_literal: true

# Find the next higher element for each element in the array.
# If there isn't one - output -1.
def next_higher_element(array)
  stack = []
  result = [-1] * array.size

  (0..array.size - 1).each do |index|
    result[stack.pop] = array[index] while !stack.empty? && array[index] > array[stack[-1]]

    stack << index
  end

  result
end
