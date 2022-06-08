class Triangle
  attr_accessor :arg1, :arg2, :arg3
  def initialize(arg1, arg2, arg3)
    @arg1=arg1
    @arg2=arg2
    @arg3=arg3
  end

  def kind
    if @arg1<=0 ||@arg2<=0 ||@arg3<=0|| @arg1+@arg2<=@arg3|| @arg1+@arg3<=@arg2 ||@arg3+@arg2<=@arg1
    
      raise TriangleError
    
    end
    if @arg1==@arg2 && @arg1==@arg3
      :equilateral
    elsif @arg1==@arg3|| @arg1==@arg2 ||@arg2==@arg3
       :isosceles
  
    else 
      :scalene
    end
   
  end
  
  
  

  class TriangleError < StandardError

  end

end

try=Triangle.new(0,1,2)

