class Square
  attr_accessor :current_piece, :x, :y, :coordinates
 def initialize(current_piece=nil, x=nil, y=nil, coordinates=nil)
  @piece_on_square = piece_on_square
  @x = x
  @y = y
  @coordinates = coordinates
 end
end