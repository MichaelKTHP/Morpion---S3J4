require_relative 'player'
require 'pry'
require 'colorize'
class Board
attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3 
attr_accessor :a1c, :a2c, :a3c, :b1c, :b2c, :b3c, :c1c, :c2c, :c3c 
attr_accessor :compteur
  def initialize(a1s=" ", a2s=" ", a3s= " ", b1s=" ", b2s= " ",b3s= " ", c1s= " ", c2s=" ",c3s= " ")
     #cases du morpion
     @a1 = a1s
     @a2 = a2s
     @a3 = a3s
     @b1 = b1s
     @b2 = b2s
     @b3 = b3s
     @c1 = c1s
     @c2 = c2s
     @c3 = c3s
     #compteur(voir def choice)
     @a1c = 0
     @a2c = 0
     @a3c = 0
     @b1c = 0
     @b2c = 0
     @b3c = 0
     @c1c = 0
     @c2c = 0
     @c3c = 0
    
  end

  def current_board
  	 print "    1    ".colorize(:blue)
     print "    2     ".colorize(:red)
     puts "   3    ".colorize(:blue)
     print "a   #{@a1}    |".colorize(:red)
     print "   #{@a2}    |".colorize(:red)
     puts "   #{@a3}     ".colorize(:red)
     print "b   #{@b1}    |".colorize(:blue)
     print "   #{@b2}    |".colorize(:blue)
     puts "   #{@b3}     "
     print "c   #{@c1}    |".colorize(:red)
     print "   #{@c2}    |".colorize(:red)
     print "   #{@c3}     ".colorize(:red)
     
  end



  def choice(player)

    chosen_case= gets.chomp.to_s
	while chosen_case != "a1" && chosen_case != "a2" && chosen_case != "a3" && chosen_case != "b1" && chosen_case != "b2" && chosen_case != "b3" && chosen_case != "c1" && chosen_case != "c2" && chosen_case != "c3"
      puts "Saisie incorrecte, indique l'emplacement d'une'une case. Exemple : a1 "
      chosen_case= gets.chomp.to_s
    end


    if chosen_case == "a1" && @a1c == 0
    	@a1 = player.symbol
    	@a1c = @a1c+1

      

    elsif chosen_case == "a2" && @a2c == 0
      @a2 = player.symbol
      @a2c = @a2c+1
    
    elsif chosen_case == "a3" && @a3c == 0
      @a3 = player.symbol
      @a3c = @a3c+1
    
    elsif chosen_case == "b1" && @b1c == 0
      @b1 = player.symbol
      @b1c = @b1c+1
    
    elsif chosen_case == "b2" && @b2c == 0
      @b2 = player.symbol
      @b2c = @b2c+1
    
    elsif chosen_case == "b3" && @b3c == 0
      @b3 =  player.symbol
      @b3c = @b3c+1
    
    elsif chosen_case == "c1" && @c1c == 0
      @c1 =  player.symbol
      @c1c = c1c+1
    
    elsif chosen_case == "c2" && @c2c == 0
      @c2 =  player.symbol
      @c2c = @c2c+1
    
    elsif chosen_case == "c3" && @c3c == 0
      @c3 =  player.symbol
      @c3c = @c3c+1
    
    else 
    	puts "Cette case est déjà prise, indique en une autre"
    	choice(player)
    end
     @compteur = @a1c + @a2c + @a3c + @b1c + @b2c + @b3c + @c1c + @c2c +@c3c

   

 end



    
end
