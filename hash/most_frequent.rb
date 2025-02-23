# frozen_string_literal: true

def most_frequent(array, k)
  hash = {}
  array.each do |element|
    if hash.fetch(element, nil)
      hash[element] += 1
    else
      hash[element] = 0
    end
  end

  hash.sort_by { |_, value| -value }.first(k).to_h.keys
end
