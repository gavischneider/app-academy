class GuessingGame
    def initialize(min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end

    def game_over?
        @game_over
    end

    def num_attempts
        @num_attempts
    end

    def num_attempts=(num)
        @num_attempts += num
    end

    def check_num(number)
        self.num_attempts=(1)
        if @secret_num == number
            @game_over = true
            p "You win"
        elsif number > @secret_num
            p "Too big"
        else
            p "Too small"
        end
    end
    
    def ask_user
        p "Enter a number: "
        num = gets.chomp
        num = num.to_i
        self.check_num(num)
    end
end
