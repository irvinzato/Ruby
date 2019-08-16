class Fraccion
  
  def initialize(num, den)
      @num = num
      @den = den
    end
    
=begin
    n1=gets
    d1=gets
    n2=gets
    d2=gets
     
    puts "La primer fraccion es " +n1 +"/" +d1
    puts "La segunda fraccion es " +n2 +"/" +d2
=end
    
    def num
      return @num
    end
    
    def den
      return @den
    end
    
    private def mcd(a,b) 
      if a<b then
        a,b = b,a
      end
      until b==0 do
        a,b = b,a%b
      end
      return a
    end
    
    def suma(f1, f2)
      if f1.den == f2.den
        newDen = (f1.den)
        newNum = (f1.num) + (f2.num)
        div = mcd(newNum, newDen)
        return Fraccion.new(newNum/div, newDen/div)
        
      else
        newDen = (f1.den* f2.den)
        newNum = (f1.num*f2.den) + (f2.num*f1.den)
        div = mcd(newNum, newDen)
        return Fraccion.new(newNum/div, newDen/div)
      end
    end
    
    def resta(f1, f2)
      if f1.den == f2.den
        newDen = (f1.den)
        newNum = (f1.num) - (f2.num)
        div = mcd(newNum, newDen)
        return Fraccion.new(newNum/div, newDen/div)
              
      else
        newDen = (f1.den* f2.den)
        newNum = (f1.num*f2.den) - (f2.num*f1.den)
        div = mcd(newNum, newDen)
        return Fraccion.new(newNum/div, newDen/div)
      end
    end
    
    def multi(f1, f2)
      newDen = (f1.den* f2.den)
      newNum = (f1.num*f2.num)
      div = mcd(newNum, newDen)
      return Fraccion.new(newNum/div, newDen/div)
    end
    
    def div(f1, f2)
      newDen = (f1.den*f2.num)
      newNum = (f1.num*f2.den)
      div = mcd(newNum, newDen)
      return Fraccion.new(newNum/div,newDen/div)
    end
          
          
    def to_s
      return "#{num}/#{den}"
    end

end