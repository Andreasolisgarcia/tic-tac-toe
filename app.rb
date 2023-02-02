require 'bundler'

#Bundler.require
require 'pry'

require_relative 'lib/Game'
require_relative 'lib/Player'
require_relative 'lib/Board'


puts "Joueur 1 : Quel est ton prenom ?"
print "> "
name1 = gets.chomp

puts 'Choisis "X" ou "O"'
print "> "
sign1 = gets.chomp.capitalize

                                      
while sign1 != "O" && sign1 != "X"
    puts 'Malin toi !, cest "X" ou "O"'
    sign1 = gets.chomp.capitalize
end
# puts sign1

puts
puts "Joueur 2 : Quel est ton prenom ?"
print "> "
name2 = gets.chomp

answers=["X","O"]
answers.delete(sign1)
sign2 = answers[0]

sign2 = answers[0]
# puts sign2


puts "#{name2}, ton signe est : #{sign2} "

player1 = Player.new(name1,sign1)
player2 = Player.new(name2,sign2)

puts
puts "[PRESS ENTER]"
gets
system 'clear'
puts "Board to be alive !"
puts
puts "[PRESS ENTER]"
gets
system 'clear'

board = Board.new
board.show_board

while  board.hash_cases.values.include? " "
    puts
    puts "#{name1}, lâche une case !"
    board.player_choise(player1)
    system 'clear'
    board.show_board
    puts
    puts "#{name2}, lâche une case !"
    board.player_choise(player2) 
    system 'clear'
    board.show_board
end

#binding.pry




    
   
  
  


 
    
    








