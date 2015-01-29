#!/usr/bin/ruby

=begin

I will be inputing several methods and syntax here as I learn ruby. Just to implement
and to see how they run in actuality. So this will be a random mix of unrelated items

=end

puts "\n\n========EXAMPLE 1: using yield========"
#example 1
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }




puts "\n\n========EXAMPLE 2: using yield with argument========"
#example 2
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }



puts "\n\n========EXAMPLE 3: METHODS========"
puts "difference between blocks and method"
# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"



puts "\n\n========EXAMPLE 4: BLOCKS========"
puts " block that capitalizes each string in the array"
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"; notice use of [] symbol for an array item.



puts "\n\n========EXAMPLE 5: SORTING========"
puts "sorting method\n"
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }
puts "Ascending Order"
puts books

print "\n\n"

# Sort your books in descending order, in-place below
books.sort! { |f, s| s<=>f }
puts "Descending Order"
puts books




puts "\n\n========EXAMPLE 6: SORTING========"
