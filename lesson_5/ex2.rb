# Lesson 5 Exercise 2

# How would you order this array of hashes based on the year of publication
# of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# My solution: 

books.sort! do |a, b|
  a[:published] <=> b[:published]
end

puts "Sorted:"
puts books 

# Launch school solution:

books.sort_by do |book|
  book[:published]        # by default, sort orders left to right by value
end                       # So, can just ask it to sort by books[index][key]

