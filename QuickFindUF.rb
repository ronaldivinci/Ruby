!#/usr/lib/ruby

#implementation of QuickFindUF

class QuickFindUF
	@n
  def initialize(p)
  	  @n = p
  	  @id = Array.new() 
  	  for i in 0...@n do
  	  	  @id << i
    	  end
  	  puts @id
  	  
  end
    
    def connected?(p, q)
    	    @id[p]==@id[q]
    end
    
    def union(p, q)
    	    pid = @id[p]
    	    qid = @id[q]
    	    
    	    @n.times do
    	    	    |x|
    	    	    if @id[x]==pid
    	    	    	    @id[x] = qid
    	    	    end
    	    end
    end
end

uF = QuickFindUF.new(10)
puts uF.connected?(1, 2)
uF.union(1, 2)
puts uF.connected?(1, 2)



