require 'bundler'
Bundler.require
$:.unshift File.expand_path("./../lib/app", __FILE__)
require "player"	
require "board"
require "game"
require "pry"
require 'colorize'


puts "Bienvenue"
puts
game = Game.new
board = Board.new
board.current_board
puts
9.times do
puts
puts
puts "C'est ton tour #{game.player_1.name}. Choisis une case "
board.choice(game.player_1)
board.current_board
break if board.compteur == 9
break if board.a1 == game.player_1.symbol && board.a2 == game.player_1.symbol && board.a3 == game.player_1.symbol
break if board.b1 == game.player_1.symbol && board.b2 == game.player_1.symbol && board.b3 == game.player_1.symbol
break if board.c1 == game.player_1.symbol && board.c2 == game.player_1.symbol && board.c3 == game.player_1.symbol
break if board.a1 == game.player_1.symbol && board.b1 == game.player_1.symbol && board.c1 == game.player_1.symbol
break if board.a2 == game.player_1.symbol && board.b2 == game.player_1.symbol && board.c2 == game.player_1.symbol
break if board.a3 == game.player_1.symbol && board.b3 == game.player_1.symbol && board.c3 == game.player_1.symbol
break if board.a1 == game.player_1.symbol && board.b2 == game.player_1.symbol && board.c3 == game.player_1.symbol
break if board.a3 == game.player_1.symbol && board.b2 == game.player_1.symbol && board.c1 == game.player_1.symbol
puts
puts
puts "C'est ton tour #{game.player_2.name}. Choisis une case "
board.choice(game.player_2)
board.current_board
break if board.a1 == game.player_2.symbol && board.a2 == game.player_2.symbol && board.a3 == game.player_2.symbol
break if board.b1 == game.player_2.symbol && board.b2 == game.player_2.symbol && board.b3 == game.player_2.symbol
break if board.c1 == game.player_2.symbol && board.c2 == game.player_2.symbol && board.c3 == game.player_2.symbol
break if board.a1 == game.player_2.symbol && board.b1 == game.player_2.symbol && board.c1 == game.player_2.symbol
break if board.a2 == game.player_2.symbol && board.b2 == game.player_2.symbol && board.c2 == game.player_2.symbol
break if board.a3 == game.player_2.symbol && board.b3 == game.player_2.symbol && board.c3 == game.player_2.symbol
break if board.a1 == game.player_2.symbol && board.b2 == game.player_2.symbol && board.c3 == game.player_2.symbol
break if board.a3 == game.player_2.symbol && board.b2 == game.player_2.symbol && board.c1 == game.player_2.symbol

end

puts
puts

puts "La partie est terminée"

puts "------------"

if board.a1 == game.player_1.symbol && board.a2 == game.player_1.symbol && board.a3 == game.player_1.symbol
	puts "#{game.player_1.name} à gagné "
elsif board.b1 == game.player_1.symbol && board.b2 == game.player_1.symbol && board.b3 == game.player_1.symbol
	puts "#{game.player_1.name} à gagné "
elsif board.c1 == game.player_1.symbol && board.c2 == game.player_1.symbol && board.c3 == game.player_1.symbol
	puts "#{game.player_1.name} à gagné "
elsif board.a1 == game.player_1.symbol && board.b1 == game.player_1.symbol && board.c1 == game.player_1.symbol
	puts "#{game.player_1.name} à gagné "
elsif board.a2 == game.player_1.symbol && board.b2 == game.player_1.symbol && board.c2 == game.player_1.symbol
	puts "#{game.player_1.name} à gagné "
elsif board.a3 == game.player_1.symbol && board.b3 == game.player_1.symbol && board.c3 == game.player_1.symbol
	puts "#{game.player_1.name} à gagné "
elsif board.a1 == game.player_1.symbol && board.b2 == game.player_1.symbol && board.c3 == game.player_1.symbol
	puts "#{game.player_1.name} à gagné "
elsif board.a3 == game.player_1.symbol && board.b2 == game.player_1.symbol && board.c1 == game.player_1.symbol
	puts "#{game.player_1.name} à gagné "



elsif board.a1 == game.player_2.symbol && board.a2 == game.player_2.symbol && board.a3 == game.player_2.symbol
	puts "#{game.player_2.name} à gagné "
elsif board.b1 == game.player_2.symbol && board.b2 == game.player_2.symbol && board.b3 == game.player_2.symbol
	puts "#{game.player_2.name} à gagné "
elsif board.c1 == game.player_2.symbol && board.c2 == game.player_2.symbol && board.c3 == game.player_2.symbol
	puts "#{game.player_2.name} à gagné "
elsif board.a1 == game.player_2.symbol && board.b1 == game.player_2.symbol && board.c1 == game.player_2.symbol
	puts "#{game.player_2.name} à gagné "
elsif board.a2 == game.player_2.symbol && board.b2 == game.player_2.symbol && board.c2 == game.player_2.symbol
	puts "#{game.player_2.name} à gagné "
elsif board.a3 == game.player_2.symbol && board.b3 == game.player_2.symbol && board.c3 == game.player_2.symbol
	puts "#{game.player_2.name} à gagné "
elsif board.a1 == game.player_2.symbol && board.b2 == game.player_2.symbol && board.c3 == game.player_2.symbol
	puts "#{game.player_2.name} à gagné "
elsif board.a3 == game.player_2.symbol && board.b2 == game.player_2.symbol && board.c1 == game.player_2.symbol
	puts "#{game.player_2.name} à gagné "

else 
	puts "C'est un match nul"
end


puts "Souhaitez vous rejouer ? Répondez Oui pour rejouer ou autre chose pour quitter "

answer = gets.chomp.to_s

  if answer == "Oui" || answer == "oui"
    load 'app.rb'
  else
  abort("A la prochaine !")
  end
#lettre ligne
#chiffre colonne

