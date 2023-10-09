class Board
  attr_reader :x, :y, :direction

  DIRECTIONS = %w[NORTH EAST SOUTH WEST].freeze
  POSITIONS = %w[0 1 2 3 4].freeze

  def initialize
    @x = 0
    @y = 0
    @direction = ''
  end

  def place(x_axis, y_axis, direction)
    return unless arguments_valid?(x_axis, y_axis, direction)

    @x = x_axis.to_i
    @y = y_axis.to_i
    @direction = direction

    # return true if an intial place is set
    initial_place_set?
  end

  def move
    case @direction
    when DIRECTIONS[0]
      @y += 1
      @y = check_move(@y)
    when DIRECTIONS[1]
      @x += 1
      @x = check_move(@x)
    when DIRECTIONS[2]
      @y -= 1
      @y = check_move(@y)
    when DIRECTIONS[3]
      @x -= 1
      @x = check_move(@x)
    end
  end

  def turn(side)
    num = DIRECTIONS.index(@direction)
    i = side == 'LEFT' ? num - 1 : num + 1
    @direction =
      if i > 3
        DIRECTIONS[0]
      else
        DIRECTIONS[i]
      end
  end

  private

  # no number above 4 or under 0 can be used or the robot moves off the table
  def check_move(place)
    if place > 4
      4
    elsif place.negative?
      0
    else
      place
    end
  end

  def arguments_valid?(x_axis, y_axis, direction)
    [x_axis, y_axis].all? { |i| POSITIONS.include? i } && DIRECTIONS.include?(direction)
  end

  def initial_place_set?
    !@x.nil? && !@y.nil? && !@direction.empty?
  end
end
