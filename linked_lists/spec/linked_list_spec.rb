# frozen_string_literal: true

require 'spec_helper'
require_relative '../linked_list'

describe LinkedList do
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

  describe '#get' do
    context 'when provided index is outside of boundaries of the linked list' do
      it 'returns nil' do
        expect(subject.get(-1)).to eq(nil)
        expect(subject.get(2)).to eq(nil)
      end
    end

    context 'when provided index is inside the boundaries of the linked list' do
      before do
        subject.push('A')
        subject.push('B')
        subject.push('C')
      end

      it 'returns the requested node' do
        expect(subject.get(0).value).to eq('A')
        expect(subject.get(1).value).to eq('B')
        expect(subject.get(2).value).to eq('C')
      end
    end
  end

  describe '#set' do
    context 'when provided index is outside of boundaries of the linked list' do
      it 'returns false' do
        expect(subject.set(-1, 'A')).to eq(false)
        expect(subject.set(2, 'B')).to eq(false)
      end

      context 'when provided index is inside the boundaries of the linked list' do
        before do
          subject.push('A')
          subject.push('B')
          subject.push('C')
        end

        it 'changes the value of the requested node' do
          subject.set(0, 'D')
          subject.set(1, 'E')
          subject.set(2, 'F')

          expect(subject.get(0).value).to eq('D')
          expect(subject.get(1).value).to eq('E')
          expect(subject.get(2).value).to eq('F')
        end
      end
    end
  end

  describe '#insert' do
    context 'when provided index is outside of boundaries of the linked list' do
      it 'returns false' do
        expect(subject.insert(-1, 'A')).to eq(false)
        expect(subject.insert(2, 'A')).to eq(false)
      end
    end

    context 'when provided index is inside the boundaries of the linked list' do
      before do
        subject.push('B')
        subject.push('D')
      end

      it 'inserts the node to the requested location' do
        subject.insert(0, 'A')
        subject.insert(2, 'C')

        expect(subject.print).to eq('ABCD')
      end
    end
  end

  describe '#delete' do
    context 'when provided index is outside of boundaries of the linked list' do
      it 'returns nil' do
        expect(subject.delete(-1)).to eq(nil)
        expect(subject.delete(2)).to eq(nil)
      end
    end

    context 'when provided index is inside the boundaries of the linked list' do
      before do
        subject.push('A')
        subject.push('B')
        subject.push('C')
        subject.push('D')
        subject.push('E')
      end

      it 'deletes requested node' do
        expect(subject.delete(0).value).to eq('A')
        expect(subject.delete(1).value).to eq('C')
        expect(subject.delete(2).value).to eq('E')

        expect(subject.print).to eq('BD')
      end
    end
  end

  describe '#print' do
    before do
      subject.push('A')
      subject.push('B')
      subject.push('C')
      subject.push('D')
      subject.push('E')
    end

    it 'displays the whole linked list as a string value' do
      expect(subject.print).to eq('ABCDE')
    end
  end
end
