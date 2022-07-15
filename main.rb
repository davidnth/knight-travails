# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/knight'

game = Board.new
board = game.board
game.print_board

knight1 = Knight.new
p knight1.next_possible_move([7, 7])
knight1.knight_moves([3,6], [5,6])