require_relative 'view'

class Simulator
  def initialize(board)
    @board = board
    @view = View.new
    @running    = true
    @placed     = false
  end

  def run
    until @placed
      place = @view.ask_user_for_place
      @placed =parse_placement(place)
    end

    while @running
      action = @view.get_user_input
      if action.include?('PLACE')
       parse_placement(action)
      else
        route_action(action)
      end
    end
  end

  def report
    @view.give_report(@board)
  end

  def turn_robot(direction)
    @board.turn(direction)
  end

  private

  def route_action(action)
    case action.upcase
    when 'MOVE' then @board.move
    when 'REPORT' then report
    when 'LEFT' then turn_robot('LEFT')
    when 'RIGHT' then turn_robot('RIGHT')
    when 'STOP' then stop
    else
      @view.something_went_wrong
    end
  end

  def stop
    @running = false
  end

  def parse_placement(placement)
    args = placement.gsub('PLACE', '').delete(' ').split(',')
    @board.place(args[0], args[1], args[2])
  end
end
