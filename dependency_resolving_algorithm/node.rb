# frozen_string_literal: true

class Node
  def initialize(value)
    @value = value
    @edges = []
  end

  def add_edge(node)
    @edges << node
  end

  attr_accessor :value, :edges
end
