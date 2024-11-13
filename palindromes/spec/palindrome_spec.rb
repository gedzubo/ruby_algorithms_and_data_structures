# frozen_string_literal: true

require 'spec_helper'
require_relative '../palindrome'

describe '#palindrome?' do
  context 'when string is palindrome' do
    context 'and has odd number of letters' do
      it 'returns true' do
        expect(palindrome?('ababa')).to eq(true)
      end
    end

    context 'and has even number of letters' do
      it 'returns true' do
        expect(palindrome?('112211')).to eq(true)
      end
    end
  end

  context 'when string is not a palindrome' do
    it 'returns false' do
      expect(palindrome?('abc')).to eq(false)
    end
  end
end
