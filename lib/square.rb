class Square
  attr_accessor :current_piece, :coordinates, :color
 def initialize(current_piece=nil, coordinates=nil)
  @current_piece = current_piece
  @color = color
  @coordinates = coordinates
 end
end