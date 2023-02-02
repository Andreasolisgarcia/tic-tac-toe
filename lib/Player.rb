class Player
    attr_accessor :name, :sign, :status
    
    def initialize(name,sign)
        @name = name
        @sign = sign
        @status = "Player"
    end 
end 