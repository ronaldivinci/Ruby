#!/usr/lib/ruby

=begin

1.	A block is just a bit of code between do..end or {}. It's not an object on 
		its own, but it can be passed to methods like .each or .select.

2.	A proc is a saved block we can use over and over.

3.	A lambda is just like a proc, only it cares about the number of arguments it 
		gets and it returns to its calling method rather than returning immediately.

		
DIFFERENCE: LAMBDA vs PROC

First, a lambda checks the number of arguments passed to it, while a proc does 
not. This means that a lambda will throw an error if you pass it the wrong 
number of arguments, whereas a proc will ignore unexpected arguments and assign 
nil to any that are missing.

Second, when a lambda returns, it passes control back to the calling method; 
when a proc returns, it does so immediately, without going back to the calling 
method.
=end



#LAMBAS and PROCs
#====================using Proc and yield====================
def greeter
    yield 
end

phrase = Proc.new {puts "Hello there!"}
greeter(&phrase)      # this could be different this method takes no argument

#=====================Proc Example============================
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3) 

#=================LAMBDAS are like Procs=======================
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })



#=================Example1 Lambda===============================

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda{|param| param.is_a? Symbol}         #used to check if param is a symbol

symbols = my_array.select(&symbol_filter)


#================ LAMBDA - EXAMPLE ============================

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda {|x, y| y<"M"}
a_to_m = crew.select(&first_half)

