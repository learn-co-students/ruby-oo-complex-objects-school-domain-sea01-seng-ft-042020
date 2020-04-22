# code here!
class School
    def initialize (name)
        @name = name
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student=(s_name, grade)
        @s_name = s_name
        @grade = grade
    end
    def add_student (s_name, grade)
        @s_name
        @grade
        if
        @roster[grade]
        @roster[grade] << s_name
        else
            @roster[grade] = []
            @roster[grade] << s_name
        end
end
def grade (grade)
    @roster[grade]
end
def sort
    @roster.select do |key, value|
        value.sort!
    end
end

end

