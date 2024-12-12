# frozen_string_literal: true

require_relative 'node'

class BinarySearchTree
  attr_accessor :root

  def insert(value)
    node = Node.new(value)

    if root.nil?
      @root = node
      return self
    end

    temp = root

    loop do
      return nil if temp.value == node.value

      if node.value < temp.value
        if temp.left.nil?
          temp.left = node
          return self
        end
        temp = temp.left
      else
        if temp.right.nil?
          temp.right = node
          return self
        end
        temp = temp.right
      end
    end
  end

  def contains?(value)
    return false if root.nil?

    temp = root
    until temp.nil?
      if value < temp.value
        temp = temp.left
      elsif value > temp.value
        temp = temp.right
      else
        return true
      end
    end

    false
  end
end
