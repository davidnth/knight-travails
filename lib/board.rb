# frozen_string_literal: true

# Board class
class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8) { Array.new(8, '*') }
  end

  def print_board
    @board.each do |row|
      row.each { print ' * ' }
      puts
    end
  end

  def invalid_index?(index)
    return true if index[0].negative? || index[0] > 7
    return true if index[1].negative? || index[1] > 7

    false
  end
end
