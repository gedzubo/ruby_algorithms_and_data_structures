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
end
