require "employee"


# salaries (hash) containing `title` => `salary` pairs

class Startup
    attr_reader :name, :funding, :salaries, :employees
    attr_writer :funding, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)    
        @salaries.has_key?(title)
    end

    def >(startup)
        self.funding > startup.funding
    end

    def hire(employee_name, title)
        if self.valid_title?(title)
            @employees << Employee.new(employee_name, title)
        else
            raise "Invalid title!"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        if self.funding > salaries[employee.title]
            employee.pay(salaries[employee.title])
            self.funding=(@funding - salaries[employee.title])
        else
            raise "Not enough $$$ to pay employee!"
        end
    end

    def payday
        @employees.each {|employee| self.pay_employee(employee)}
    end

    def average_salary
        sum = 0
        @employees.each do |employee|
            sum += salaries[employee.title]
        end
        return (sum / employees.length)
    end

    def close
        self.employees=([])
        self.funding=(0)
    end

    def acquire(startup)
        self.funding=(@funding += startup.funding)
        startup.salaries.each do |title, salary|
            if !@salaries.has_key?(title)
                @salaries[title] = salary
            end
        end
        # Add employees
        startup.employees.each {|employee| @employees << employee}
        startup.close
    end
end
