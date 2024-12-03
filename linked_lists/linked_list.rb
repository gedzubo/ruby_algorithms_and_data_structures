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
    @head = head.next
    temp.next_node = nil
    @lenght -= 1

    @tail = nil if lenght.zero?

    temp
  end

  def get(index)
    return nil if index.negative? || index >= lenght

    temp = head
    index.times do
      temp = temp.next
    end

    temp
  end

  def set(index, value)
    temp = get(index)
    return false if temp.nil?

    temp.value = value
    true
  end

  attr_accessor :head, :tail, :lenght
end
