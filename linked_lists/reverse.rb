# frozen_string_literal: true

# Reverse linked list
def reverse(head)
  previous_node = nil
  current_node = head

  until current_node.nil?
    next_node = current_node.next_node
    current_node.next_node = previous_node
    previous_node = current_node
    current_node = next_node
  end

  previous_node
end
