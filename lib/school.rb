# code here!

class School

    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name,grade)
        if @roster.include?(grade)
            @roster[grade] <<student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        new_hash = {}
        @roster.each do |grade,students|
            new_hash[grade] = students.sort
        end
        return new_hash
    end
end