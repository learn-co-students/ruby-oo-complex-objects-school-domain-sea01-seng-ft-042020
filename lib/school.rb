class School
    attr_accessor :roster
    attr_reader :name 
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, student_grade)
        roster[student_grade] ? roster[student_grade].push(student_name) : roster[student_grade] = [student_name]
    end

    def grade(grade_number)
        roster[grade_number]
    end

    def sort()
        roster.each {|grade_key, student_array_value| roster[grade_key] = student_array_value.sort()}
    end

end