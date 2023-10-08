class View
  def give_report(board)
    puts "#{board.x}, #{board.y}, #{board.direction}"
  end

  def ask_user_for_place
    puts 'Place the Robot: PLACE X, Y, F'
    get_user_input
  end

  def get_user_input
    print '> '
    gets.chomp
  end

  def something_went_wrong
    puts 'sorry, try again'
  end
end
