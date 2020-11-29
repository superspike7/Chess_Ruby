require_relative './square.rb'

class Board 
  attr_accessor :board

  def initialize
    @board = make_board
    @mode = nil
  end

  def selection_mode
    @mode = 'selection_mode'
  end

  def make_board
  square_array  = Array.new(64) {Square.new}
   numbers = ('1'..'8').to_a
   letters = ('a'..'h').to_a
   letters.product(numbers).zip(square_array){ |a, e| e.coordinates = a.join}
   return square_array
  end

end

p Board.new.board