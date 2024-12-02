# frozen_string_literal: true

require_relative 'node'

class LinkedList
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
      @tail = new_node
    end
    @lenght += 1

    self
  end

  def pop
    return nil if head.nil?

    temp = head
    previous = head

    while temp.next_node
      previous = temp
      temp = temp.next_node
    end

    puts previous
    @tail = previous
    @tail.next_node = nil
    @lenght -= 1

    if lenght.zero?
      @head = nil
      @tail = nil
    end

    temp
  end

  attr_accessor :head, :tail, :lenght
end
