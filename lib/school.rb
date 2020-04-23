# code here!

class School
    attr_accessor :roster

    def initialize (school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster.each do |student_grade, student_names|
            if grade == student_grade
                return student_names
            end
        end
    end

    def sort
        @roster.each do |student_grade, student_names|
            student_names.sort!
        end
    end
end
