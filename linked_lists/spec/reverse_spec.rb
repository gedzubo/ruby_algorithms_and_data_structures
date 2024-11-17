# frozen_string_literal: true

require 'spec_helper'
require_relative '../node'
require_relative '../reverse'

describe '#reverse' do
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

  it 'reverses the linked list' do
    new_head = reverse(a)

    expect(new_head.path).to eq('EDCBA')
  end
end
