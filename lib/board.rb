#require 'pry'
class Board
    attr_accessor :a1, :a2, :a3, :b1, :b2, :b3,:c1, :c2, :c3, :cases
    
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
        
        @cases = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
    end

    def show_board
        puts "       1           2          3"
        puts "A      #{@cases[0]}     |    #{@cases[1]}     |     #{@cases[2]}"
        puts "    ______________________________"
        puts "B      #{@cases[3]}     |    #{@cases[4]}     |     #{@cases[5]}"
        puts "    ______________________________"
        puts "C      #{@cases[6]}     |    #{@cases[7]}     |     #{@cases[8]}"
        puts "    ______________________________"
    end

    def player_choise(player)
        puts 'Lache une caise'
        choise_player = gets.chomp

        case choise_player
            when "a1"
                @cases[0] = player.sign
            when "a2"
                @cases[1] = player.sign
            when "a3"
                @cases[2]= player.sign
            when "b1"
                @cases[3] = player.sign
            when "b2"
                @cases[4] = player.sign
            when "b3"
                @cases[5] = player.sign
            when "c1"
                @cases[6] = player.sign
            when "c2"
                @cases[7] = player.sign
            when "c3"
                @cases[8]= player.sign
        end
    end


end

#board.player_choise(choise,player1)

#binding.pry

# Board.new.show_board