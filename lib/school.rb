class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name=name
    @roster={}
  end
  
  def add_student(student_name, grade)
  # @roster[grade] ||=[]
  # @roster[grade] << student_name
  if @roster[grade]
    @roster[grade] << student_name
  else
  @roster[grade]=[]
  @roster[grade] << student_name
  end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort 
    @roster.each do |grade,students|
      students.sort!
  end
end
  
end