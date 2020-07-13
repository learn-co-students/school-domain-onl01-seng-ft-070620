class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(new_name, grade)
     @roster[grade] ||= []
     @roster[grade] << new_name
  end 
  
  def grade(new_grade)
    @roster[new_grade]
  end
  
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
     end
   sorted
  end
end
    