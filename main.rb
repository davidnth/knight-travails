# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/knight'

game = Board.new
board = game.board

knight = Knight_graph.new

knight.knight_moves([3,3], [4,3])
