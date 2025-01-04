# frozen_string_literal: true

# Desc: Write a function that splits an array into chunks of a specified size
# Examples:
# chunks([1, 2, 3, 4, 5], 2) => [[1, 2], [3, 4], [5]]
def chunks(array, size)
  array.each_slice(size).to_a
end
