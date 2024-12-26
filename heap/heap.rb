# frozen_string_literal: true

class Heap
  def initialize
    @heap = []
  end

  def insert(value)
    heap.push(value)

    current_index = heap.size - 1

    while current_index.positive? && heap[current_index] > heap[parent(current_index)]
      swap(current_index, parent(current_index))
      current_index = parent(current_index)
    end
  end

  def remove
    return nil if heap.empty?
    return heap.pop if heap.length == 1

    max_value = heap[0]
    heap[0] = heap.pop
    sink_down(0)

    max_value
  end

  def print_heap
    heap
  end

  private

  attr_accessor :heap

  def left_child(index)
    index * 2 + 1
  end

  def right_child(index)
    index * 2 + 2
  end

  def parent(index)
    ((index - 1) / 2).floor
  end

  def swap(index1, index2)
    heap[index1], heap[index2] = heap[index2], heap[index1]
  end

  def sink_down(index)
    max_index = index
    size = heap.size
    loop do
      left = left_child(max_index)
      right = right_child(max_index)

      max_index = left if left < size && heap[left] > heap[max_index]

      max_index = right if right < size && heap[right] > heap[max_index]

      break unless max_index != index

      swap(index, max_index)
      index = max_index
    end
  end
end
