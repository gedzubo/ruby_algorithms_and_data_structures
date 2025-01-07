# frozen_string_literal: true

class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  attr_accessor :shift

  def encrypt(text)
    text.chars.map { |char| shift_char(char, shift) }.join
  end

  def decrypt(text)
    text.chars.map { |char| shift_char(char, -shift) }.join
  end

  private

  def shift_char(char, provided_shift)
    return char unless char.match?(/[a-zA-Z]/)

    provided_shift %= 26
    char = char.ord

    if char.between?(65, 90)
      char = 65 + (char - 65 + provided_shift) % 26
    elsif char.between?(97, 122)
      char = 97 + (char - 97 + provided_shift) % 26
    end

    char.chr
  end
end
