# frozen_string_literal: true

# Reverse linked list
def middle_node(head)
  slow_pointer = head
  fast_pointer = head

  until fast_pointer.next_node.nil?
    slow_pointer = slow_pointer&.next_node
    fast_pointer = fast_pointer&.next_node&.next_node
  end

  slow_pointer
end
