# frozen_string_literal: true

require 'spec_helper'
require_relative '../heap'

describe Heap do
  subject { described_class.new }

  describe '#insert' do
    context 'when the heap is empty' do
      it 'adds a new element to the heap' do
        subject.insert(5)

        expect(subject.print_heap).to eq([5])
      end
    end

    context 'when the heap has some elements' do
      before do
        subject.insert(5)
        subject.insert(10)
        subject.insert(15)
        subject.insert(20)
        subject.insert(1)
        subject.insert(8)
      end

      it 'adds a new element to the heap' do
        subject.insert(99)

        expect(subject.print_heap).to eq([99, 15, 20, 5, 1, 8, 10])
      end
    end
  end
end
