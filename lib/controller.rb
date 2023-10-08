require_relative 'view'

class Controller
  def initialize(board)
    @board = board
    @view = View.new
  end

  def placement(placement)
    args = placement.gsub('PLACE', '').delete(' ').split(',')
    @board.place(args[0], args[1], args[2])
    if @board.x.nil? || @board.y.nil? || @board.direction.empty?
      false
    else
      true
    end
  end

  def move_robot
    @board.move
  end

  def report
    @view.give_report(@board)
  end

  def turn_robot(direction)
    @board.turn(direction)
  end
end
