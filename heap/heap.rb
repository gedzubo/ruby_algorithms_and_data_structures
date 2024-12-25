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
end
