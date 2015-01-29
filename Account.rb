#!/usr/bin/ruby

=begin

This bankng program shows use of defining public and private methods. As well 
as assigning default values to constructor. As well as defining accessor 
(getters and setters) with use of attr_reader

ACCESSORS

GETTERS and SETTERS

e.g.
class Person
    attr_reader :name
    attr_reader :job
    attr_writer :job
  def initialize(name, job)
    @name = name
    @job = job
  end
  
EQUIVALENT TO
  def name
    @name
  end

 def job
   @job
 end
  
 def job=(new_job)
    @job = new_job
 end
end

EQUIVALENT TO: attr_accessor :variable

If you have an attr_reader :variable and attr_writer :variable. 
Since you have a reader and writer for thesame variable you can make it even shorter


=end

#BANKING EXAMPLE
class Account
	attr_reader :name
	attr_reader :balance
    
	def initialize(name, balance=100)
    	@name = name
    	@balance = balance
	end
    
	private
	def pin()
    	@pin = 1234
	end
    
	def pin_error()
    	return "Access denied: incorrect PIN."
	end
    
	public
	def display_balance(pin_number)
    	puts pin_number==pin() ? "Balance: $#{@balance}.": pin_error()
	end
    
	def withdraw(pin_number, amount)
    	if pin_number==pin()
        	@balance -= amount
        	puts "Withdrew #{amount}. New balance $#{@balance}."
    	else
        	puts pin_error()
    	end
	end
end

checking_account = Account.new("vince", 1)

