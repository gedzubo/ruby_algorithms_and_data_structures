# frozen_string_literal: true

require 'spec_helper'
require_relative '../doubly_linked_list'

describe DoublyLinkedList do
  subject { described_class.new }

  describe '#push' do
    context 'with empty linked list' do
      it 'allows to add a new node to the list' do
        subject.push('A')
        subject.push('B')
        subject.push('C')

        expect(subject.print).to eq('ABC')
        expect(subject.lenght).to eq(3)
      end
    end

    context 'when linked list has some nodes' do
      subject { described_class.new('A') }

      it 'allows to add a new node to the list' do
        subject.push('B')
        subject.push('C')

        expect(subject.print).to eq('ABC')
        expect(subject.lenght).to eq(3)
      end
    end
  end

  describe '#pop' do
    context 'when the list is empty' do
      it 'returns nil as there is nothing to pop' do
        expect(subject.pop).to eq(nil)
      end
    end

    context 'when the list contains 1 node' do
      before do
        subject.push('A')
      end

      it 'removes the node and sets the tail and the head to nil' do
        popped_node = subject.pop

        expect(popped_node.value).to eq('A')

        expect(subject.head).to eq(nil)
        expect(subject.tail).to eq(nil)
        expect(subject.lenght).to eq(0)
      end
    end

    context 'when the list contains multiple nodes' do
      before do
        subject.push('A')
        subject.push('B')
        subject.push('C')
      end

      it 'removes the last node from the list' do
        popped_node = subject.pop

        expect(popped_node.value).to eq('C')

        expect(subject.head.value).to eq('A')
        expect(subject.tail.value).to eq('B')
        expect(subject.lenght).to eq(2)
      end
    end
  end

  describe '#unshift' do
    context 'when the list is empty' do
      it 'adds a note to the front of the list' do
        subject.unshift('A')

        expect(subject.print).to eq('A')
        expect(subject.lenght).to eq(1)
      end
    end

    context 'when the list contains nodes' do
      subject { described_class.new('B') }

      it 'adds a note to the front of the list' do
        subject.unshift('A')

        expect(subject.print).to eq('AB')
        expect(subject.lenght).to eq(2)
      end
    end
  end

  describe '#shift' do
    context 'when the list is empty' do
      it 'returns nil as there is nothing to shift' do
        expect(subject.shift).to eq(nil)
      end
    end

    context 'when the list contains 1 node' do
      before do
        subject.push('A')
      end

      it 'removes the node' do
        shifted_node = subject.shift

        expect(shifted_node.value).to eq('A')

        expect(subject.head).to eq(nil)
        expect(subject.tail).to eq(nil)
        expect(subject.lenght).to eq(0)
      end
    end

    context 'when the list contains multiple nodes' do
      before do
        subject.push('A')
        subject.push('B')
        subject.push('C')
      end

      it 'removes the first node from the list' do
        shifted_node = subject.shift

        expect(shifted_node.value).to eq('A')

        expect(subject.head.value).to eq('B')
        expect(subject.tail.value).to eq('C')
        expect(subject.lenght).to eq(2)
      end
    end
  end
end
