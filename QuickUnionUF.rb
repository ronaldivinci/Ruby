!#/usr/lib/ruby

#implementation of QuickUnionUF
#Algorithm lecture, my ruby implementation

class QuickUnionUF
	@n
	def initialize(p)       #my constructor, to initialize the array id with numbers 0-9
  	  @n = p
  	  @id = Array.new() 
  	  for i in 0...@n do
  	  	  @id << i
    	  end
  	  puts @id
  	end
  	
  	private
  	
  	def root(i)             # root will be used to change the root of one vertice to desired root: essentially:i = id[ id[ id[i] ] ] 
  		while i!=@id[i]
  			i = @id[i]
  		return i
  	end
    
  	public 
  	
    def connected?(p, q)
    	    root(p)==root(q)
    end
    
    def union(p, q)
    	i = root(p)
    	j = root(q)
    	    
    	@id[i] = j; 
    end
end

uF = QuickFindUF.new(10)
puts uF.connected?(1, 2)
uF.union(1, 2)
puts uF.connected?(1, 2)



