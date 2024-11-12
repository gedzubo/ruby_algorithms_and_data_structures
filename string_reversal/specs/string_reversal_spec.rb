# frozen_string_literal: true

require 'spec_helper'
require_relative '../string_reversal'

describe '#string_reversal' do
  context 'with string that has odd number of letters' do
    it 'reverses the string' do
      expect(string_reversal('abcde')).to eq('edcba')
    end
  end

  context 'with string that has even number of letters' do
    it 'reverses the string' do
      expect(string_reversal('abcde12345')).to eq('54321edcba')
    end
  end
end
