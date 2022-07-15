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
end
