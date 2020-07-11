class School
  attr_accessor
  attr_reader :name, :roster
  
  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each { |grade, names| names.sort! }
  end
end