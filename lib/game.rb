require_relative 'player'
class Game

    def initialize(name, sign, player)
        puts "Joueur 1 : Quel est ton prenom ?"
        name1 = gets.chomp

        puts 'Choisis "X" ou "O"'
        sign1 = gets.chomp

        puts "Joueur 2 : Quel est ton prenom ?"
        name2 = gets.chomp

        puts 'Choisis "X" ou "O"'
        sign2 = gets.chomp
    
        player1 = Player.new(name1,sign1)
        player2 = Player.new(name2,sign2)
    end

end