# frozen_string_literal: true

# Space complexity: O(n)
# Time complexity: O(n log n)
def merge_sort(array)
  return array if array.length <= 1

  mid = array.length / 2
  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..])

  merge(left, right)
end

def merge(array1, array2)
  merged = []
  i = 0
  j = 0

  while i < array1.length && j < array2.length
    if array1[i] < array2[j]
      merged.push(array1[i])
      i += 1
    else
      merged.push(array2[j])
      j += 1
    end
  end

  while i < array1.length
    merged.push(array1[i])
    i += 1
  end

  while j < array2.length
    merged.push(array2[j])
    j += 1
  end

  merged
end
