require 'bundler'
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


puts
puts "Joueur 2 : Quel est ton prenom ?"
print "> "
name2 = gets.chomp

answers=["X","O"]
answers.delete(sign1)
sign2 = answers[0]

puts "#{name2}, ton signe est : #{sign2} "

player1 = Player.new(name1,sign1)
player2 = Player.new(name2,sign2)

puts
puts "[PRESS ENTER]"
gets
system 'clear'
puts "Board to be alive !"

board = Board.new
board.show_board


while board.hash_cases.values.include? " "
    if  player1.status == "Player"
        puts "#{player1.name}, lâche une case !"
        board.player_choise(player1)
        system 'clear'
        board.show_board
        board.player_wins?(player1)
    else
        break
    end 
    if  player1.status == "Player"
        puts "#{player2.name}, lâche une case !"
        board.player_choise(player2) 
        system 'clear'
        board.show_board
        board.player_wins?(player2)
    else
        break
    end 
end

puts "Tu veux Tenter une nouvelle fois Y/N?"
again = gets.chomp
while again != "Y" && again != "N"
    puts 'Pardon?'
    again = gets.chomp.capitalize
end








    
   
  
  


 
    
    








