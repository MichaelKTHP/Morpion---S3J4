require_relative 'board'
require_relative 'player'
require 'pry'


class Game
attr_accessor :player_1
attr_accessor :player_2
attr_accessor :board
  def initialize
 puts "Quel est le nom du joueur 1 ?"
 
 @player_1 = Player.new(gets.chomp.to_s,"X")
 puts "Quel est le nom du joueur 2 ?"

 @player_2 = Player.new(gets.chomp.to_s,"O")

 @board = Board.new
 



  	
  end

 
	

end

