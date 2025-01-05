# frozen_string_literal: true

# Time complexity: O(n + k)
# Space complexity: O(n + k)
def counting_sort(array)
  return [] if array.empty?

  max = array.max
  min = array.min
  count = Array.new(max - min + 1, 0)

  array.each { |num| count[num - min] += 1 }

  result = []
  count.each_with_index do |i, index|
    i.times { result << index + min }
  end

  result
end
