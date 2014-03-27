require "./Mars_Rover"

# 5 5
# 1 2 N
# LMLMLMLMM

class Commander
  x = 0
  y = 1
  direction = 2
  def create_rover(starting_point)
    coords == starting_point.split(" ")
    @rover = Rover.new(coords[x], coords[y], coords[direction])
    
  end

  def Move_rover(move_command)
    move_command.split("").each do |c|
      if c == "L"
        @rover.turn_left
      elsif c == "R"
        @rover.turn_right
      elsif c == "M"
        @rover.move_where
      end
    end
  end
end