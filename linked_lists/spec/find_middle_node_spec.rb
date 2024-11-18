# frozen_string_literal: true

require 'spec_helper'
require_relative '../node'
require_relative '../find_middle_node'

describe '#middle_node' do
  before do
    a.next_node = b
    b.next_node = c
    c.next_node = d
    d.next_node = e
  end

  let(:a) { Node.new('A') }
  let(:b) { Node.new('B') }
  let(:c) { Node.new('C') }
  let(:d) { Node.new('D') }
  let(:e) { Node.new('E') }

  it 'finds the middle node' do
    expect(middle_node(a).name).to eq(c.name)
  end
end
