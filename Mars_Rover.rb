class Rover
  directions = %w(N E S W)
  N = 0
  E = 1
  S = 2
  W = 3

  moves = {}
  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
    
  end

  def location
    puts "#{@x}, #{@y} , #{@direction}"
  end

  def forward
    @y += 1
    
  end

  def turn_right
    @direction = (@direction + 1) % 4
  end

  def turn_left
    @direction = (@direction - 1) % 4
  end

  def move_where
    if @direction == "N"
      @y  += 1
    elsif  @direction == "E"
      @x += 1
    elsif @direction == "S"
      @y -= 1
    elsif @direction == "W"
      @x -= 1
    end

  end
end