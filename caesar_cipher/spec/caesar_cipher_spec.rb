# frozen_string_literal: true

require 'spec_helper'
require_relative '../caesar_cipher'

describe CaesarCipher do
  subject { described_class.new(4) }

  describe '#encrypt' do
    it 'encrypts the given message' do
      expect(subject.encrypt('Hello, World!')).to eq('Lipps, Asvph!')
    end
  end

  describe '#decrypt' do
    it 'decrypts the given message' do
      expect(subject.decrypt('Lipps, Asvph!')).to eq('Hello, World!')
    end
  end
end
