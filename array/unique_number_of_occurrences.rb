# frozen_string_literal: true

# Example 1:
# Input: arr = [1, 2, 2, 1, 1, 3]
# Output: true
# Example 2:
# Input: arr = [1, 2]
# Output: false
def unique_occurrences(arr)
  return true if arr.size == 1

  occurrences = {}

  arr.each do |num|
    occurrences[num] = 1 + occurrences.fetch(num, 0)
  end

  occurrences.values.uniq.size == occurrences.values.size
end
