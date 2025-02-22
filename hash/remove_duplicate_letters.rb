# frozen_string_literal: true

# Input: "aabccd" (a string)
# Output: "abcd"
def remove_duplicate_letters(string)
  return string if string.length == 1

  letters = {}

  (0..string.length - 1).each do |index|
    letters[string[index]] = 1 unless letters.fetch(string[index], nil)
  end

  letters.keys.join
end
