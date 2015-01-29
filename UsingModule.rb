#!/usr/bin/ruby

=begin

You can think of a module as a toolbox that contains a set of methods and 
constants. There are lots and lots of Ruby tools you might want to use, 
but it would clutter the interpreter to keep them around all the time. For 
that reason, we keep a bunch of them in modules and only pull in those module 
toolboxes when we need the constants and methods inside!

You can think of modules as being very much like classes, only modules can't 
create instances and can't have subclasses. They're just used to store things!

=end

# COOL EXAMPLE using Time class and Module
# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
	extend ThePresent       #NOTICE the use of extend to include the module ThePresent
end

TheHereAnd.now

