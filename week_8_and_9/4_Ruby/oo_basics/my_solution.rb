# U3.W8-9: OO Basics: Student


# I worked on this challenge by myself.

# 2. Pseudocode
=begin
1. Create an initialize method under the class Student that takes a first_name and scores as arguments.
2. Create a method, average, that returns the average of a students scores.
3. Create a method, letter_grade, that returns a students average letter grade.
4. Create a seperate method, linear_search, that takes an array of students and a first name.
5. Have it return -1 unless the first name is in the array of students then
6. it should return the index of where the name resides in the array.
=end


# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    @first_name = first_name
    @scores = scores 
  end

  def average
    sum = 0
    @scores.each { |i| sum += i }
    return @average = sum / @scores.length
  end

  def letter_grade
    if @average >= 90
      "A"
    elsif @average >= 80
      "B"
    elsif @average >= 70
      "C"
    elsif @average >= 60
      "D"
    else
      "F"
    end
  end
end

def linear_search(array, student)
  names = []
  array.each { |n| names << n.first_name}
  unless names.include?(student)
    return -1
  else 
    return names.index(student)
  end
end

alex = Student.new("Alex", [100,100,100,0,100]) 
dalton = Student.new("Dalton", [80,75,100,20,100])
jenny = Student.new("Jenny", [100,100,100,100,100])
kristina = Student.new("Kristina", [100,65,70,50,100])
agnus = Student.new("Agnus", [100,100,100,80,100]) 
students = [alex, dalton, jenny, kristina, agnus]
# 4. Refactored Solution
=begin 
I would like to refactor this code and I am asking my classmates to help me find ways to cut some lines. :)
=end

# 1. DRIV`ER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0

# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# 5. Reflection 
=begin
I found this challenge to be okay. I had trouble understanding the directions for Release 0 
but I managed to work through this and find a solution. I used an unless statement for my 
linear search compared to my standard if/else statement for variety and I had some fun 
developing the code! :) Overall, I feel confident writing statements, creating objexts, and 
automating repetitive tasks.
=end