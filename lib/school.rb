require 'pry'
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    
    def add_student(name, grade)
        if @roster.key?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
        
    end

    def grade(grade_number)
        @roster[grade_number]
    end

    def sort
        @roster.each do |grade, students|
             @roster[grade] = students.sort
        end

    end

    # binding.pry
end
