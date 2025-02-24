# frozen_string_literal: true

require 'spec_helper'
require_relative '../grid'

describe Grid do
  subject { described_class.new(3, 3) }

  describe '#insert' do
    it 'allows to insert a value in the grid' do
      subject.insert(1, 1, 'X')

      expect(subject.print).to eq("O O O\nO X O\nO O O\n")
    end
  end

  describe '#print' do
    it 'returns the grid as a string' do
      expect(subject.print).to eq("O O O\nO O O\nO O O\n")
    end
  end

  describe '#fill_row' do
    it 'fills a row with a value' do
      subject.fill_row(1, 'X')

      expect(subject.print).to eq("O O O\nX X X\nO O O\n")
    end
  end

  describe '#fill_column' do
    it 'fills a column with a value' do
      subject.fill_column(1, 'X')

      expect(subject.print).to eq("O X O\nO X O\nO X O\n")
    end
  end

  describe '#fill_diagonal' do
    it 'fills the diagonal with a value' do
      subject.fill_diagonal('X')

      expect(subject.print).to eq("X O O\nO X O\nO O X\n")
    end
  end

  describe '#fill_reverse_diagonal' do
    it 'fills the reverse diagonal with a value' do
      subject.fill_reverse_diagonal('X')

      expect(subject.print).to eq("O O X\nO X O\nX O O\n")
    end
  end

  describe '#check_if_value_is_in_the_grid?' do
    it 'returns true if the value is in the grid' do
      subject.insert(1, 1, 'X')

      expect(subject.check_if_value_is_in_the_grid?('X')).to be true
    end

    it 'returns false if the value is not in the grid' do
      expect(subject.check_if_value_is_in_the_grid?('X')).to be false
    end
  end
end
