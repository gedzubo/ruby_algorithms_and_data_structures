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

  def fill_row(row, value)
    grid[row].fill(value)
  end

  def fill_column(column, value)
    grid.each do |row|
      row[column] = value
    end
  end

  def fill_diagonal(value)
    grid.each_with_index do |row, index|
      row[index] = value
    end
  end

  def fill_reverse_diagonal(value)
    grid.each_with_index do |row, index|
      row[grid.size - 1 - index] = value
    end
  end

  attr_reader :rows, :columns, :grid
end
