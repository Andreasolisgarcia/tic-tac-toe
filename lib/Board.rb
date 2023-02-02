#require 'pry'
require_relative 'Player'

class Board
    attr_accessor :a1, :a2, :a3, :b1, :b2, :b3,:c1, :c2, :c3, :hash_cases
    
    def initialize
        @a1 = " "
        @a2 = " "
        @a3 = " "
        @b1 = " "
        @b2 = " "
        @b3 = " "
        @c1 = " "
        @c2 = " "
        @c3 = " "
        
        @hash_cases = {"a1" => @a1, "a2" => @a2, "a3" => @a3, "b1" => @b1, "b2" => @b2, "b3" => @b3, "c1" => @c1, "c2" => @c2, "c3" => @c3}
      end

    # def show_board
    #     puts "       1           2          3"
    #     puts "A      #{@cases[0]}     |    #{@cases[1]}     |     #{@cases[2]}"
    #     puts "   ______________________________"
    #     puts "B      #{@cases[3]}     |    #{@cases[4]}     |     #{@cases[5]}"
    #     puts "   ______________________________"
    #     puts "C      #{@cases[6]}     |    #{@cases[7]}     |     #{@cases[8]}"
    # end

    def show_board
        puts "   1   2   3"
        puts "a  #{@hash_cases["a1"]} | #{@hash_cases["a2"]} | #{@hash_cases["a3"]}"
        puts "  ---+---+---"
        puts "b  #{@hash_cases["b1"]} | #{@hash_cases["b2"]} | #{@hash_cases["b3"]}"
        puts "  ---+---+---"
        puts "c  #{@hash_cases["c1"]} | #{@hash_cases["c2"]} | #{@hash_cases["c3"]}"
    end

    def player_choise(player)
        puts "C'est à toi de jouer, pense vite ! : "
        # puts "Lâche une case"
        choise_player = gets.chomp
        if  @hash_cases[choise_player] == " "
        @hash_cases[choise_player] = player.sign
        end 
    end


    def player_wins?(player)
        win_cases =[[@hash_cases["a1"], @hash_cases["b2"], @hash_cases["c3"]],[@hash_cases["c1"], @hash_cases["b2"], @hash_cases["a3"],[@hash_cases["a1"],@hash_cases["a2"]}     |     #{@hash_cases["a3"],["b1", "b2", "b3"],["c1", "c2", "c3"]]
        for win_cases.each do |win_case|
        end
   
    end


end



#binding.pry


