# Easy 9 Exercise 9 - Grade Book

def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3
  grade = ''

  case
  when average >= 90 && average <= 100
    grade = 'A'
  when average >= 80 && average < 90
    grade = 'B'
  when average >= 70 && average < 80
    grade = 'C'
  when average >= 60 && average < 70
    grade = 'D'
  when average < 60 
    grade = 'F'
  end

  grade
end

# Examples

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"