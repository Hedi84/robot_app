class View
  def give_report(board)
    puts "#{board.x}, #{board.y}, #{board.direction}"
  end

  def ask_user_for(question)
    puts "#{question.capitalize}?"
    print '> '
    gets.chomp
  end
end
