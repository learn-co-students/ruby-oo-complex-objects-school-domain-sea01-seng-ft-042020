require "pry"

class School
    attr_accessor :school_name, :roster

    def initialize(school_name,roster={})
        @school_name = school_name
        @roster = roster
    end
    def add_student(name, grade)
        @grade = :grade
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end
    def grade(grade)
        return roster[grade]
    end
    def sort
        roster.select do |grade|
            roster[grade] = roster[grade].sort
    end
    roster
    end
end
