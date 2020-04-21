class School
    attr_reader :roster
    
    def initialize(school)
        @school = school
        @roster = Hash.new {|h,k| h[k]=[]}
    end

    def add_student(name, grade)
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort
        end
    end
end