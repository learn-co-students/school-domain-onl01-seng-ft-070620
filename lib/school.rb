
class School

attr_accessor :school, :roster
# attr_reader


  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student (student, grade)
      roster[grade] ||= []
      roster[grade] << student
  end

  def grade(grade)
    return roster[grade]
  end

def sort
  new_hash = {}
  roster.each do |grade, students|
    new_hash[grade] = students.sort
  end
  return new_hash
end

end
