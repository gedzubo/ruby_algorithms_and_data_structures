# frozen_string_literal: true

require_relative 'node'

class BinarySearchTree
  attr_accessor :root

  def insert(value, current_node = root)
    # If the root is nil, create a new node and set it as the root
    if root.nil?
      @root = Node.new(value)
      return root
    end

    return Node.new(value) if current_node.nil?

    if value < current_node.value
      current_node.left = insert(value, current_node.left)
    else
      current_node.right = insert(value, current_node.right)
    end

    current_node
  end

  def contains?(value, current_node = root)
    return false if current_node.nil?
    return true if current_node.value == value

    if value < current_node.value
      contains?(value, current_node.left)
    else
      contains?(value, current_node.right)
    end
  end
end
