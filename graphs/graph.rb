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

  def add_edge(vertex1, vertex2)
    if list.fetch(vertex1, nil) && list.fetch(vertex2, nil)
      list[vertex1] << vertex2
      list[vertex2] << vertex1

      return true
    end

    false
  end

  def remove_edge(vertex1, vertex2)
    if list.fetch(vertex1, nil) && list.fetch(vertex2, nil)
      list[vertex1].delete(vertex2)
      list[vertex2].delete(vertex1)

      return true
    end

    false
  end

  def remove_vertex(vertex)
    if list.fetch(vertex, nil)
      list[vertex].each do |v|
        list[v].delete(vertex)
      end

      list.delete(vertex)
      return true
    end

    false
  end
end
