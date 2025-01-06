# frozen_string_literal: true

require 'spec_helper'
require_relative '../resolve_dependencies'

describe '#resolve_dependencies' do
  let(:node_a) { Node.new('A') }
  let(:node_b) { Node.new('B') }
  let(:node_c) { Node.new('C') }
  let(:node_d) { Node.new('D') }
  let(:node_e) { Node.new('E') }
  let(:node_f) { Node.new('F') }
  let(:node_g) { Node.new('G') }
  let(:node_h) { Node.new('H') }

  before do
    node_a.add_edge(node_b)
    node_a.add_edge(node_c)
    node_b.add_edge(node_c)
    node_b.add_edge(node_d)
    node_c.add_edge(node_e)
    node_d.add_edge(node_f)
    node_e.add_edge(node_f)
    node_f.add_edge(node_g)
    node_g.add_edge(node_h)
  end

  context 'when there are no circular dependencies' do
    it 'returns an array of nodes in the correct order' do
      expect(resolve_dependencies(node_a).map(&:value)).to eq(%w[H G F E C D B A])
    end
  end

  context 'when there is a circular dependency' do
    it 'raises an error' do
      node_h.add_edge(node_a)

      expect { resolve_dependencies(node_a) }.to raise_error('Circular dependency detected')
    end
  end
end
