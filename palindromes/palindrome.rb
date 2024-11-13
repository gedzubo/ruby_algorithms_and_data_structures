# frozen_string_literal: true

# Check if a string is a palindrome. If yes - return true, if no - false.

def palindrome?(str)
  start_point = 0
  end_point = str.size - 1

  while start_point < end_point
    return false if str[start_point] != str[end_point]

    start_point += 1
    end_point -= 1
  end

  true
end
