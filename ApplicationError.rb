#!/usr/lib/ruby       

#stub bang slash /usr/bin/ruby  OR usr/lib/ruby
=begin

INHERITANCE

We define class, ApplicationError, as well as a SuperBadError class that inherits 
from ApplicationError. Note that we don't define the display_error method in the 
body of SuperBadError, but it will still have access to that method via inheritance. 

=end

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError             #inheritance < this SuperBadError inherrists the display error method from the ApplicationError class
end

err = SuperBadError.new
err.display_error

