# frozen_string_literal: true

# input: [1, 1, 2, 2, 2, 2, 3]
# output: 2
def majority_number(array)
  candidate = nil
  count = 0

  array.each do |num|
    candidate = num if count.zero?

    count += num == candidate ? 1 : -1
  end

  candidate
end
