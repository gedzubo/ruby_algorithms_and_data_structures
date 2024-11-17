# frozen_string_literal: true

class Node
  def initialize(name)
    @name = name
  end

  def path
    path = name
    current_node = next_node

    until current_node.nil?
      path += current_node.name
      current_node = current_node.next_node
    end

    path
  end

  attr_accessor :name, :next_node
end
