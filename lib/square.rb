class Square
  attr_accessor :current_piece, :coordinates, :color, :piece
 def initialize(current_piece=nil, coordinates=nil, piece=" ")
  @current_piece = current_piece
  @color = color
  @coordinates = coordinates
  @piece = piece
 end
end