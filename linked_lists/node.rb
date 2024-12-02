# frozen_string_literal: true

class Node
  def initialize(value)
    @value = value
  end

  def path
    path = value
    current_node = next_node

    until current_node.nil?
      path += current_node.value
      current_node = current_node.next_node
    end

    path
  end

  attr_accessor :value, :next_node
end
