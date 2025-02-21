# frozen_string_literal: true

# Input: "aabcabcc" (a string)
# Output: "bcab" (a string)
def remove_duplicate_pairs(string)
  return string if string.length == 1

  stack = [string[0]]
  (1..string.length - 1).each do |index|
    if string[index] == stack[-1]
      stack.pop
    else
      stack << string[index]
    end
  end

  return '' if stack.empty?

  stack.join
end
