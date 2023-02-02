require 'bundler'
#Bundler.require
#require 'pry'


require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'


puts "Joueur 1 : Quel est ton prenom ?"
name1 = gets.chomp

puts 'Choisis "X" ou "O"'
sign1 = gets.chomp

while sign1 != "O" && sign1 != "X"
    print 'Malin toi !, cest "X" ou "O"'
    sign1 = gets.chomp
end

puts sign1

puts "Joueur 2 : Quel est ton prenom ?"
name2 = gets.chomp

answers = ["X","O"]
answers.delete(sign1)

sign2 = answers [0]
puts "Ton pion est : #{sign2}"

gets

puts "#{name2} ton sign est : #{sign2}"

player1 = Player.new(name1,sign1)
player2 = Player.new(name2,sign2)

puts "Board to be alive !"

board = Board.new
board.show_board

while  board.cases.include? " "
    board.player_choise(player1)
    board.show_board
    board.player_choise(player2)
    board.show_board
end


#binding.pry