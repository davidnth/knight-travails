# frozen_string_literal: true

# Node Class
class Node
  attr_accessor :position, :neighbours, :previous

  MOVEMENTS = [
    [1, 2], [1, -2],
    [-1, 2], [-1, -2],
    [2, 1], [2, -1],
    [-2, 1], [-2, -1]
  ].freeze

  def initialize(position, previous)
    @previous = previous
    @position = position
    @neighbours = next_possible_move
  end

  # Returns an array of valid next possible positions
  def next_possible_move
    x = position[0]
    y = position[1]

    MOVEMENTS.map { |n| [n[0] + x, n[1] + y] }.select { |n| n unless invalid?(n) }
  end

  # Returns true if a position is off the board
  def invalid?(position)
    return true unless position[0].between?(0, 7) && position[1].between?(0, 7)

    false
  end

  # Prints the shortest path from start to finish and how many moves it takes
  def print_path
    path = backtrack.reverse
    puts "You made it in #{path.size - 1} move(s)! Here's your path: \n\n"
    path.each { |position| p position }
    self
  end

  # Takes the finish node and returns an array of coordinates from finish to start
  def backtrack(node = self, array = [])
    return array if node.nil?

    array << node.position
    backtrack(node.previous, array)
  end
end

# Knight_graph class
class Knight_graph
  attr_accessor :nodelist

  def initialize
    @nodelist = {}
  end

  def add_node(node, previous = nil)
    @nodelist[node] = Node.new(node, previous)
  end

  # Finds the shortest path between 2 coordinates
  def knight_moves(starting_coordinate, end_coordinate)
    add_node(starting_coordinate)
    queue = []
    queue << starting_coordinate
    loop do
      current = queue.shift
      unvisited_neighbours(nodelist[current]).each do |neighbour|
        add_node(neighbour, nodelist[current])
        queue << neighbour
      end
      break if nodelist[end_coordinate]
    end

    nodelist[end_coordinate].print_path
  end

  # Returns an array of coordinates which have not yet been visited
  def unvisited_neighbours(node)
    node.neighbours.select { |neighbour| neighbour unless nodelist[neighbour] }
  end
end
