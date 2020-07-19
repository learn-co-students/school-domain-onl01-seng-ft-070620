class School
    attr_accessor :roster
    def initialize(school_name)
        @school = school_name
        @roster = {}
    end

    def add_student(name, grade)
       if roster[grade]

       else
        roster[grade] = []
       end
       roster[grade] << name
    end

    def grade(grade)
       roster[grade]
    end

    def sort
        roster.each do |grade, name|
            name.sort!
        end
    end
end 

