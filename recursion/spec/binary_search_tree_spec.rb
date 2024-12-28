# frozen_string_literal: true

require 'spec_helper'
require_relative '../binary_search_tree'

describe BinarySearchTree do
  subject { described_class.new }

  describe '#insert' do
    it 'inserts the value to the correct position' do
      subject.insert(50)
      subject.insert(95)
      subject.insert(15)
      subject.insert(87)

      root = subject.root
      expect(root.value).to eq(50)

      root_left = root.left
      expect(root_left.value).to eq(15)
      expect(root_left.left).to eq(nil)
      expect(root_left.right).to eq(nil)

      root_right = root.right
      expect(root_right.value).to eq(95)
      expect(root_right.left.value).to eq(87)
      expect(root_right.right).to eq(nil)
    end
  end

  describe '#contains?' do
    before do
      subject.insert(50)
      subject.insert(95)
      subject.insert(15)
      subject.insert(87)
      subject.insert(1)
      subject.insert(14)
      subject.insert(13)
    end

    it 'returns true if the tree contains the value' do
      expect(subject.contains?(1)).to eq(true)
    end

    it 'returns false if the tree does not contain the value' do
      expect(subject.contains?(49)).to eq(false)
    end
  end

  describe '#bfs' do
    before do
      subject.insert(50)
      subject.insert(95)
      subject.insert(15)
      subject.insert(87)
      subject.insert(1)
      subject.insert(14)
      subject.insert(13)
    end

    it 'returns the values in breadth-first order' do
      expect(subject.bfs).to eq([50, 15, 95, 1, 87, 14, 13])
    end
  end

  describe '#dfs_pre_order' do
    before do
      subject.insert(50)
      subject.insert(95)
      subject.insert(15)
      subject.insert(87)
      subject.insert(1)
      subject.insert(14)
      subject.insert(13)
    end

    it 'returns the values in pre-order depth-first order' do
      expect(subject.dfs_pre_order).to eq([50, 15, 1, 14, 13, 95, 87])
    end
  end

  describe '#dfs_post_order' do
    before do
      subject.insert(50)
      subject.insert(95)
      subject.insert(15)
      subject.insert(87)
      subject.insert(1)
      subject.insert(14)
      subject.insert(13)
    end

    it 'returns the values in post-order depth-first order' do
      expect(subject.dfs_post_order).to eq([13, 14, 1, 15, 87, 95, 50])
    end
  end

  describe '#dfs_in_order' do
    before do
      subject.insert(50)
      subject.insert(95)
      subject.insert(15)
      subject.insert(87)
      subject.insert(1)
      subject.insert(14)
      subject.insert(13)
    end

    it 'returns the values in in-order depth-first order' do
      expect(subject.dfs_in_order).to eq([1, 13, 14, 15, 50, 87, 95])
    end
  end
end
