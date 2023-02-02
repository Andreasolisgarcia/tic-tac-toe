#require 'pry'
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

    def show_board
        puts "       1           2          3"
        puts "A      #{@hash_cases["a1"]}     |    #{@hash_cases["a2"]}     |     #{@hash_cases["a3"]}"
        puts "   ______________________________"
        puts "B      #{@hash_cases["b1"]}     |    #{@hash_cases["b2"]}     |     #{@hash_cases["b3"]}"
        puts "   ______________________________"
        puts "C      #{@hash_cases["c1"]}     |    #{@hash_cases["c3"]}     |     #{@hash_cases["c3"]}"
    end

    def player_choise(player)
        puts "C'est à toi de jouer, pense vite ! : "
        puts 'Lache une caise'
        choise_player = gets.chomp
        if  @hash_cases[choise_player] == " "
        @hash_cases[choise_player] = player.sign
        end 
    end

    def who_wins?
        ["a1", "b2", "c3"]
        ["1", "b2", "c3"]
        if  
    end
end



#binding.pry


