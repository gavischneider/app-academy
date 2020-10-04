class Employee
    attr_reader :name, :title
    
    def initialize(name, title)
        @name = name
        @title = title
        @earnings = 0
    end

    def earnings=(number)
        @earnings += number
    end

    def pay(number)
        self.earnings=(number)
    end
end
