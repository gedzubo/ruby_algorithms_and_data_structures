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

  def bfs
    queue = [root]
    result = []

    until queue.empty?
      current_node = queue.shift
      result << current_node.value

      queue << current_node.left if current_node.left
      queue << current_node.right if current_node.right
    end

    result
  end

  def dfs_pre_order(current_node = root, result = [])
    return if current_node.nil?

    result << current_node.value
    dfs_pre_order(current_node.left, result)
    dfs_pre_order(current_node.right, result)

    result
  end

  def dfs_post_order(current_node = root, result = [])
    return if current_node.nil?

    dfs_post_order(current_node.left, result)
    dfs_post_order(current_node.right, result)
    result << current_node.value

    result
  end

  def dfs_in_order(current_node = root, result = [])
    return if current_node.nil?

    dfs_in_order(current_node.left, result)
    result << current_node.value
    dfs_in_order(current_node.right, result)

    result
  end
end
