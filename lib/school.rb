class School 
    def initialize(name)
        #initializes with a name and an empty roster
        @name = name
        @roster = {}
    end

    def roster
        #getter method for the empty roster
        @roster
    end

    def add_student(name, grade)
        #if and only if the roster does not exist
        if @roster[grade] == nil
            #create an empty array
            @roster[grade] = []
        end
        #add the name to the roster
        @roster[grade] << name
    end

    def grade(grade)
        #getter method for the student grades
        @roster[grade]
    end

    def sort
        #enumerate through each student on the roster 
        @roster.each do | grades , names |
            #sort by name
            names.sort!
        end
    end
end
