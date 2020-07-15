class School
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def school_name=(school_name)
    @school_name = school_name
  end 
  
  def school_name
    @school_name
  end 
  
  def roster=(roster)
    @roster = roster
  end 
  
  def roster
    @roster
  end 
  
  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else 
      @roster[grade] << name
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    new_roster = {}
    @roster.collect do |grade, name|
    new_roster[grade] = name.sort
   end 
  new_roster
  end 
end 

