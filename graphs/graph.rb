# frozen_string_literal: true

class Graph
  attr_accessor :list

  def add_vertex(vertex)
    if list.fetch(vertex, nil)
      list[vertex] = []
      return true
    end

    false
  end
end
