require 'bundler'
#Bundler.require
#require 'pry'


require_relative 'lib/Game'
require_relative 'lib/Player'
require_relative 'lib/Board'


puts "Joueur 1 : Quel est ton prenom ?"
name1 = gets.chomp

puts 'Choisis "X" ou "O"'
sign1 = gets.chomp
                                      
while sign1 != "O" && sign1 != "X"
    puts 'Malin toi !, cest "X" ou "O"'
    sign1 = gets.chomp
end

puts "Joueur 2 : Quel est ton prenom ?"
name2 = gets.chomp

array =["X","O"].delete(sign1)
sign2 = array[0]

puts "#{name2} ton sign est: #{sign2} "

player1 = Player.new(name1,name2)
player2 = Player.new(sign1,sign2)

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




    
   
  
  


 
    
    








