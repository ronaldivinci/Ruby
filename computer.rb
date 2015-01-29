#!/usr/bin/ruby

#Trying out ruby stuff:
#Class: Computer
#Showing class definition, use of class variable and instance variable. 
class Computer
    @@users = {}              #the @@ is a symbol for class variables in ruby while @ is a symbol for instance variable
   def initialize(username, password)
       @username = username
       @password = password
       @files = {}
       @@users[username] = password
   end
   
   def create(filename)
       time = Time.now
       @files[filename] = time
       puts "A new file, #{filename} was created, with username: #{@username} at #{time}"
       
   end
   
   def Computer.get_users()
      return @@users 
   end
end

my_computer = Computer.new("ronaldivinci", "crespo10")
my_mac = Computer.new("Fadwa", "fasakh622") 

my_computer.create("rubyfile")
puts Computer.get_users()

