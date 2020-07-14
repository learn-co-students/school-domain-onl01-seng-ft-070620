class School
    
    attr_accessor :name, :roster
    
    def initialize(name)
      @name = name
      @roster = {}
    end
    
    def add_student(student_name, grade)
      roster[grade] ||= []              #Assigns the grade key to the array only if it doesn't exist yet
      roster[grade] << student_name     #Shovel the student name to the grade
    end
      
    def grade(student_grade)
      roster[student_grade]
    end
    
    def sort
      sorted_hash = {}
      roster.each do |grade, students|
        sorted_hash[grade] = students.sort
      end
      sorted_hash
    end
        
      
  end