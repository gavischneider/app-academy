class Board

    attr_reader :size

    def initialize(n)
        @grid = Array.new(n) { Array.new(n) { :N } }
        @size = n * n
    end

    def [](position)
        @grid[position[0]][position[1]]
    end

    def []=(position, value)
        @grid[position[0]][position[1]] = value
    end

    def num_ships
        count = 0
        flat_arr = @grid.flatten
        flat_arr.each do |pos|
            if pos == :S
                count += 1
            end
        end
        count
    end

    def attack(position)
        if self[position] == :S
            self[position] = :H
            puts 'you sunk my battleship!'
            return true
        else
            self[position] = :X
            return false
        end
    end

    def place_random_ships
        percentage = @size / 4
        while self.num_ships < percentage
            random_row = rand(0...@grid.length)
            random_col = rand(0...@grid.length)
            position = [random_row, random_col]
            self[position] = :S
        end
    end

    def hidden_ships_grid
        @grid.map do |row|
            row.map do |position|
                if position == :S
                    :N
                else
                    position
                end
            end
        end
    end

    def self.print_grid(grid)
        grid.map do |row|
            puts row.join(" ")
        end
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(self.hidden_ships_grid)
    end
        
end
