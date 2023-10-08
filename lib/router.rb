class Router
  def initialize(controller)
    @controller = controller
    @running    = true
    @placed = false
  end

  def run
    until @placed
      puts 'Place the Robot: PLACE X, Y, F'
      place = gets.chomp
      @placed = @controller.placement(place) if place.match?(/\W*(PLACE)\s[0-4],{1}[0-4],{1}\D{4,5}/)
    end

    while @running
      action = gets.chomp
      if action.include?('PLACE')
        @controller.placement(action)
      else
        route_action(action)
      end
    end
  end

  private

  def route_action(action)
    case action.upcase
    when 'MOVE' then @controller.move_robot
    when 'REPORT' then @controller.report
    when 'LEFT' then @controller.turn_robot('LEFT')
    when 'RIGHT' then @controller.turn_robot('RIGHT')
    when 'STOP' then stop
    else
      puts 'Please try an existing command'
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ''
    puts 'What do you want to do next?'
    puts '1 - Add a Placement'
    puts '2 - Move Robot'
    puts '3 - Report'
    puts '4 - Turn Robot'
    puts '5 - Stop and exit the program'
  end
end
