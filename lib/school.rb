# code here!
class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  
  def grade(grade)
    roster.detect do |key, value|
      if key == grade
        return value
      end
    end
  end
  
  def sort
    sort_hash = {}
    roster.each do |key, value|
      sort_hash[key] = value.sort
    end
    sort_hash
  end
end