class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
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

    def sort
        nuhash = {}
        roster.each do |x, y|
            nuhash[x] = y.sort
        end
        nuhash
    end

end