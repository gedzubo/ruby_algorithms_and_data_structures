# frozen_string_literal: true

class Node
  def initialize(value)
    @value = value
  end

  attr_accessor :value, :next_node, :previous_node
end
