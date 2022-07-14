# frozen_string_literal: true

# Knight Class
class Knight
  MOVEMENTS = [
    [1, 2], [1, -2],
    [-1, 2], [-1, -2],
    [2, 1], [2, -1],
    [-2, 1], [-2, -1]
  ].freeze

  def initialize
    @current_position
  end

  # Returns an array of valid next possible positions
  def next_possible_move(game, current_position)
    x = current_position[0]
    y = current_position[1]

    raw = MOVEMENTS.map do |coordinate|
      [coordinate[0] + x, coordinate[1] + y]
    end

    raw.select { |coordinate| coordinate unless game.invalid_index?(coordinate) }
  end
end
