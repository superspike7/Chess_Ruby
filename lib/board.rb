require_relative './square.rb'
require 'colorize'

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
   set_color(square_array)
   return square_array
  end

  def set_color(arr)
   arr.each do | square |
    if square.coordinates =~ /[aceg]/
     arr.index(square).odd? ? square.color = 'light_white' : square.color = 'black'
    else
     arr.index(square).odd? ? square.color = 'black' : square.color = 'light_white' 
    end
   end
  end

  def show
    count = 0
    @board.each do |square| 
      print "#{square.coordinates} ".colorize(:color => :light_black, :background => :"#{square.color}")
      count += 1
      print "\n" if count % 8 == 0
    end
    puts
  end
end

Board.new.show

