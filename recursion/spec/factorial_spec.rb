# frozen_string_literal: true

require 'spec_helper'
require_relative '../factorial'

describe '#factorial' do
  context 'when num is 0' do
    it 'returns 1' do
      expect(factorial(0)).to eq(1)
    end
  end

  context 'when num is 1' do
    it 'returns 1' do
      expect(factorial(1)).to eq(1)
    end
  end

  context 'when num is greater than 1' do
    it 'returns the factorial of num' do
      expect(factorial(5)).to eq(120)
    end
  end
end
