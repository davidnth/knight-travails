# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/knight'

game = Board.new
board = game.board
game.print_board

knight1 = Knight.new
p knight1.next_possible_move(game, [6, 7])