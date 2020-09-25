class School
  #readers for the instance variables in the initialize method
  attr_reader :name, :roster

  #intitializes each instance of school with a name and creates an empty roster hash for it.
  def initialize(name)
    @name = name
    @roster = {}
  end

  #method for adding a new student to the roster hash
  def add_student(name, grade)
    #if @roster.has_key?(grade)
    #  @roster[grade] << name
    #else
    #  @roster[grade] = [name]
    #end
    @roster[grade] ||= []
    @roster[grade] << name
    #if the grade key exists, do nothing. If it doesn't exist, make it and set the value to an empty array.
    #the or/equals on line 16 serves the same function as the if statement from line 11
    #if self.roster[grade] already exists, leave it alone! else set self.roster[grade] = []
  end

  def grade(grade)
    @roster[grade]
  end
end
