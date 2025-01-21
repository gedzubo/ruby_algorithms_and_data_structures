# frozen_string_literal: true

class Grid
  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @grid = Array.new(rows) { Array.new(columns, 'O') }
  end

  def insert(row, column, value)
    grid[row][column] = value
  end

  def print
    output = ''

    grid.each do |row|
      output += row.join(' ')
      output += "\n"
    end

    output
  end

  attr_reader :rows, :columns, :grid
end
