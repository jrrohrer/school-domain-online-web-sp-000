class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    #if @roster.has_key?(grade)
    #  @roster[grade] << name
    #else
    #  @roster[grade] = [name]
    #end
    @roster[grade] ||= []
    @roster[grade] << name
    #if the grade exists, do nothing. If it doesn't exist, make it and set the value to an empty array.
    #the or/equals on line 16 serves the same function as the if statement from line 11
  end
end
