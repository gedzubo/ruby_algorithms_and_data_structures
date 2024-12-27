# frozen_string_literal: true

def factorial(num)
  (1..num).inject(:*) || 1
end
