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

  def pop
    return nil if tail.nil?

    temp = tail
    if lenght == 1
      @head = nil
      @tail = nil
    else
      @tail = tail.previous_node
      tail.next_node = nil
      temp.previous_node = nil
    end
    @lenght -= 1

    temp
  end

  def unshift(value)
    new_node = Node.new(value)
    if lenght.zero?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = head
      head.previous_node = new_node
      @head = new_node
    end
    @lenght += 1

    self
  end

  def shift
    return nil if lenght.zero?

    temp = head
    if lenght == 1
      @head = nil
      @tail = nil
    else
      @head = head.next_node
      head.previous_node = nil
      temp.next_node = nil
    end
    @lenght -= 1

    temp
  end

  def get(index)
    return nil if index.negative? || index >= lenght

    if index < lenght / 2
      temp = head
      index.times { temp = temp.next_node }
    else
      temp = tail
      i = lenght - 1
      while i > index
        temp = temp.previous_node
        i -= 1
      end
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
    before = get(index - 1)
    after = before.next_node

    before.next_node = new_node
    new_node.previous_node = before
    new_node.next_node = after
    after.previous_node = new_node

    @lenght += 1

    true
  end

  def delete(index)
    return nil if index.negative? || index >= lenght
    return shift if index.zero?
    return pop if index == lenght - 1

    temp = get(index)
    temp.previous_node.next_node = temp.next_node
    temp.next_node.previous_node = temp.previous_node
    temp.previous_node = nil
    temp.next_node = nil

    @lenght -= 1

    temp
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
