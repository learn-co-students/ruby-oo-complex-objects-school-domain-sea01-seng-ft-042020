# code here!
require 'pry'
class School
    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}

    end

    def add_student(student, level)
           
            roster[level] ||= []
            roster[level] << student
          end 
          
          def grade(level)
            roster.detect do |x, y| 
              if x == level
                return y 
              end 
            end 
          end 
          



#binding.pry

    # def student_name(name,grade)
        
    
    # end

    def sort 
          nu_hash = {}
          roster.each do |x, y| 
            nu_hash[x] = y.sort 
          end 
          nu_hash
    end 
          
    


end