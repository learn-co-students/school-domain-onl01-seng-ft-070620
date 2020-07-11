## 1. Create a School class that is initialized with:
##    -A @name argument for the school name.
##    -@roster set to an empty hash.
## 2. Create a reader/writer for #name and #roster.
## 3. Create a #add_student method that takes in
##      a name and grade parameter and adds them
##      to the #roster hash.
##      -When #add_student is called, it should output
##      the following: {9 => ["Name"]} which means
##      the grade == key and name == value.
##      -It should add an empty array for the #grade
##      if no grade currently exists in the hash,otherwise
##      it should add name to the existing grade.
## 4. Create a #grade method that returns all of the
##      students in that grade.
## 5. Create a #sort method that returns the grade and
##      students.
##      -The students names should be in alphabetical order.
##      -The grades do not have to be in order.

require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end 

    def add_student(student_name, grade)
            if @roster[grade] == nil
                @roster[grade] = []
                @roster[grade] << student_name
            else
                @roster[grade] << student_name
            end 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        @roster.each do |grade, names|
            names.sort!
        end 
    end 
end 