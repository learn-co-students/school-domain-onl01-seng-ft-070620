require 'pry'

class School

    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        
        if @roster.keys.include?(grade)
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end

    end
    
    def grade(num)
        @roster[num]
    end

    def sort
        
        @roster.each do |grade, list|
            @roster[grade].sort!
        end

    end
    
end

#binding.pry