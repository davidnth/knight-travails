# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/knight'

game = Board.new
board = game.board

knight = Knight_graph.new

knight.knight_moves([0, 0], [0, 5])
