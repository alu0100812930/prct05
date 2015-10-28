#!/usr/bin/ruby

class Fraccion
    attr_accessor :n  
    attr_accessor :d
    def initialize(n, d)
        mcm = mcm(n,d)
        @n = n/mcm
        @d = d/mcm
        
    end
    def mcm(a,b)
            while (b!=0)
            r=a%b
            a=b
            b=r
            end
            a
    end
    
    def to_s
        "#{@n}/#{@d}"
    end
    
    def + (other)
        if (@d==other.d)
        Fraccion.new(@n + other.n, @d)
    else
        Fraccion.new(@n*other.d+other.n*@d, @d*other.d)
        end
    end
    
    def - (other)
        if (@d==other.d)
        Fraccion.new(@n-other.n, @d)
    else
        Fraccion.new(@n*other.d-other.n*@d, @d*other.d)
        end
    end
    
    def * (other)
        Fraccion.new(@n*other.n, @d*other.d)
    end
    
    def / (other)
        Fraccion.new(@n*other.d, @d*other.n)
    end
    
    def == (other)
        cociente = @n/@d
        cociente == other.n/other.d
    end
    
    def != (other)
         cociente = @n/@d
        cociente != other.n/other.d
    end
    
    def > (other)
        cociente = @n/@d
        cociente > other.n/other.d
    end
    
    def >= (other)
        cociente = @n/@d
        cociente >= other.n/other.d
    end
    
      def < (other)
        cociente = @n/@d
        cociente < other.n/other.d
      end
      
      def <= (other)
        cociente = @n/@d
        cociente <= other.n/other.d
      end
      
end


