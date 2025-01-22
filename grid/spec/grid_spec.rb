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
end
