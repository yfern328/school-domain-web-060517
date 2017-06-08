class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new {|k,v| k[v] = []}
  end

  def add_student(student_name, student_grade)
    @roster[student_grade] << student_name
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.map {|grade,student_array| [grade,student_array.sort]}.to_h
  end

end
