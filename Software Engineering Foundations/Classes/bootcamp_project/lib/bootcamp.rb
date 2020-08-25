class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |hash, k| hash[k] = [] }
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(teacher)
        self.teachers << teacher
    end

    def enroll(student)
        if self.students.length == @student_capacity
            return false
        else
            self.students << student
            return true
        end
    end

    def enrolled?(student)
        if self.students.include?(student)
            return true
        else
            return false
        end
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length 
    end

    def add_grade(student, grade)
        if @students.include?(student)
            @grades[student] << grade
            return true
        else
            return false
        end
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)
        if @students.include?(student)
            if @grades[student].length >= 1
                return @grades[student].sum / @grades[student].length
            else
                return nil
            end
        else
            return nil
        end
    end



end
