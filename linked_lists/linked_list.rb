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

    @tail = previous
    @tail.next_node = nil
    @lenght -= 1

    if lenght.zero?
      @head = nil
      @tail = nil
    end

    temp
  end

  def unshift(value)
    new_node = Node.new(value)

    if head.nil?
      @head = new_node
      @tail = head
    else
      new_node.next_node = head
      @head = new_node
    end
    @lenght += 1

    self
  end

  def shift
    return nil if head.nil?

    temp = head
    @head = head.next_node
    temp.next_node = nil
    @lenght -= 1

    @tail = nil if lenght.zero?

    temp
  end

  def get(index)
    return nil if index.negative? || index >= lenght

    temp = head
    index.times do
      temp = temp.next_node
    end

    temp
  end

  def set(index, value)
    temp = get(index)
    return false if temp.nil?

    temp.value = value
    true
  end

  def insert(index, value)
    return false if index.negative? || index >= lenght
    return unshift(value) if index.zero?
    return push(value) if index == lenght

    new_node = Node.new(value)
    previous_node = get(index - 1)

    new_node.next_node = previous_node.next_node
    previous_node.next_node = new_node

    @lenght += 1

    true
  end

  def delete(index)
    return nil if index.negative? || index >= lenght
    return shift if index.zero?
    return pop if index == lenght - 1

    previous_node = get(index - 1)
    node_to_delete = previous_node.next_node

    previous_node.next_node = node_to_delete.next_node
    node_to_delete.next_node = nil

    @lenght -= 1

    node_to_delete
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

  def reverse
    return nil if head.nil?

    temp = head
    previous = nil
    next_node = nil

    while temp
      next_node = temp.next_node
      temp.next_node = previous
      previous = temp
      temp = next_node
    end

    @tail = head
    @head = previous

    self
  end

  def find_middle_node
    slow_pointer = head
    fast_pointer = head

    until fast_pointer.next_node.nil?
      slow_pointer = slow_pointer&.next_node
      fast_pointer = fast_pointer&.next_node&.next_node
    end

    slow_pointer
  end

  attr_accessor :head, :tail, :lenght
end
