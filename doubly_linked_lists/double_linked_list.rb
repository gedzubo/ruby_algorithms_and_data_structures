# frozen_string_literal: true

require_relative 'node'

class DoublyLinkedList
  def initialize(initial_value = nil)
    if initial_value
      @head = Node.new(initial_value)
      @tail = head
      @lenght = 1
    else
      @head = nil
      @tail = nil
      @lenght = 0
    end
  end

  def push(value)
    new_node = Node.new(value)

    if head.nil?
      @head = new_node
      @tail = head
    else
      @tail.next_node = new_node
      new_node.previous_node = tail
      @tail = new_node
    end
    @lenght += 1

    self
  end

  def print
    temp = head
    return nil if head.nil?

    path = temp.value

    while temp.next_node
      temp = temp.next_node

      path += temp.value
    end

    path
  end

  attr_accessor :head, :tail, :lenght
end
