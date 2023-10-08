require_relative 'board'
require_relative 'simulator'

board = Board.new
simulator = Simulator.new(board)

simulator.run
