# frozen_string_literal: true

require_relative 'node'

def resolve_dependencies(node, resolved = [], unresolved = [])
  unresolved.push(node)

  node.edges.each do |edge|
    raise 'Circular dependency detected' if unresolved.include?(edge)

    resolve_dependencies(edge, resolved, unresolved) unless resolved.include?(edge)
  end

  resolved.push(node)
  unresolved.delete(node)

  resolved
end
