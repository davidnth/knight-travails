# frozen_string_literal: true

# Knight Class
class Knight
  def initialize
    @current_position
    MOVEMENTS = [
                  [1,2], [1,-2]
                  [-1,2], [-1,-2]
        
                ]
  end

  def next_possible_move(game, current_position)
    x = current_position[0]
    y = current_position[1]

    indices = [
      [x - 1, y + 2], [x - 1, y - 2],
      [x + 1, y + 2], [x + 1, y - 2],
      [x - 2, y + 1], [x - 2, y - 1],
      [x + 2, y + 1], [x - 2, y - 1]
    ]

    indices.select { |coordinate| coordinate unless game.invalid_index?(coordinate) }
  end


end

