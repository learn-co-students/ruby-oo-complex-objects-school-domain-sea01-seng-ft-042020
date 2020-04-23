require 'pry'

class School 
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name,grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do | grades , names |
            # binding.pry
            names.sort!
        end
    end
end
School.new("Name").sort