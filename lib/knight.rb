# frozen_string_literal: true

# Knight Class
class Knight
  attr_accessor :current_position, :next_positions

  MOVEMENTS = [
    [1, 2], [1, -2],
    [-1, 2], [-1, -2],
    [2, 1], [2, -1],
    [-2, 1], [-2, -1]
  ].freeze

  def initialize
    @current_position = nil#Move.new(current_position)
    @next_positions = nil
  end

  # Returns an array of valid next possible positions
  def next_possible_move(current_position)
    x = current_position[0]
    y = current_position[1]

    MOVEMENTS.map { |n| [n[0] + x, n[1] + y] }.select { |n| n unless invalid?(n) }
  end

  def invalid?(position)
    return true unless position[0].between?(0, 7) && position[1].between?(0, 7)

    false
  end
end 