require 'pry'

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
  
  def grade(student)
    roster[student]
  end
  
  def sort
    sort_rost = Hash.new
    
    roster.each do |grade, student|
      sort_rost[grade] = student.sort
    end
    sort_rost
  end
end

School.new("Test school")


