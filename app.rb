require 'bundler'
Bundler.require

require_relative 'lib/Game'
require_relative 'lib/Player'
require_relative 'lib/Board'

puts "████████╗██╗░█████╗░  ████████╗░█████╗░░█████╗░  ████████╗░█████╗░███████╗".light_blue
puts "╚══██╔══╝██║██╔══██╗  ╚══██╔══╝██╔══██╗██╔══██╗  ╚══██╔══╝██╔══██╗██╔════╝".light_blue
puts "░░░██║░░░██║██║░░╚═╝  ░░░██║░░░███████║██║░░╚═╝  ░░░██║░░░██║░░██║█████╗░░".light_blue
puts "░░░██║░░░██║██║░░██╗  ░░░██║░░░██╔══██║██║░░██╗  ░░░██║░░░██║░░██║██╔══╝░░".light_blue
puts "░░░██║░░░██║╚█████╔╝  ░░░██║░░░██║░░██║╚█████╔╝  ░░░██║░░░╚█████╔╝███████╗".light_blue
puts "░░░╚═╝░░░╚═╝░╚════╝░  ░░░╚═╝░░░╚═╝░░╚═╝░╚════╝░  ░░░╚═╝░░░░╚════╝░╚══════╝".light_blue
puts
puts "█▀█ █░█ █▄▄ █▄█".red
puts "█▀▄ █▄█ █▄█ ░█░".red
puts

gets
system 'clear'



puts "Joueur 1 : Quel est ton prenom Human?".colorize(:color => :green, :mode => :bold)
print "* "
name1 = gets.chomp
puts
puts 'Choisis "X" ou "O"'.colorize(:color => :green, :mode => :bold)
print "* "
sign1 = gets.chomp.capitalize                                    
while sign1 != "O" && sign1 != "X"
    puts 'Malin toi !, cest "X" ou "O"'
    sign1 = gets.chomp.capitalize
end
system 'clear'

puts "Joueur 2 : Quel est ton prenom Human V2.0?".colorize(:color => :green, :mode => :bold)
print "* "
name2 = gets.chomp
answers=["X","O"]
answers.delete(sign1)
sign2 = answers[0]
puts
puts "#{name2}, ton signe est : #{sign2} ".colorize(:color => :green, :mode => :bold)

game = Game.new
player1 = Player.new(name1,sign1)
player2 = Player.new(name2,sign2)

puts
puts "....it's about to rooooll".colorize(:color => :green, :mode => :bold)
gets
system 'clear'
puts "Board to be alive ! tu connais les règles ;)"
puts
board = Board.new
board.show_board


    while board.hash_cases.values.include? " "
        if  player1.status == "Player"
            puts
            puts "#{player1.name}, lâche une case !".colorize(:color => :blue, :mode => :bold)
            board.player_choise(player1)
            system 'clear'
            board.show_board
            board.player_wins?(player1)
        else
            break
        end 
        if  player1.status == "Player"
            puts
            puts "#{player2.name}, lâche une case !".colorize(:color => :yellow, :mode => :bold)
            board.player_choise(player2) 
            system 'clear'
            board.show_board
            board.player_wins?(player2)
        else
            break
        end 
    end

   