# frozen_string_literal: true

require 'spec_helper'
require_relative '../quick_sort'

describe '#quick_sort' do
  context 'when the array is empty' do
    it 'returns an empty array' do
      expect(quick_sort([], 0, 0)).to eq([])
    end
  end

  context 'when the array has one element' do
    it 'returns the array' do
      expect(quick_sort([1], 0, 0)).to eq([1])
    end
  end

  context 'when the array has multiple elements' do
    it 'returns the sorted array' do
      expect(quick_sort([3, 2, 1, 5, 4])).to eq([1, 2, 3, 4, 5])
    end
  end
end
