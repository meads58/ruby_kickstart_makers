class Fraction
  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    self.numerator, self.denominator = numerator, denominator
  end

  def to_s
    "#{numerator}/#{denominator}"
  end

  def to_f
    numerator / denominator.to_f
  end

  def gcd(a, b)
    return a if b == 0
    gcd b, (a % b)
  end

  def lowest
    divisor = gcd(numerator, denominator)
    Fraction.new(numerator/divisor, denominator/divisor)
  end
end

<<<<<<< HEAD
#==============Meads==============
class Fraction
  attr_accessor :numerator, :denominator

  def initialize (numerator, denominator)
    @denominator = denominator
    @numerator =  numerator
=======
#Jordan
class Fraction

  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator, @denominator = numerator, denominator
  end

  def to_s
    "#{numerator}/#{denominator}"
  end

  def to_f
    numerator.to_f / denominator.to_f
  end

  def lowest
    common = gcd(numerator, denominator)
    Fraction.new(numerator/common, denominator/common)
>>>>>>> upstream/master
  end

  def gcd(a,b)
    return a if b == 0
<<<<<<< HEAD
    gcd(b, a%b)#recursion being used here.
  end

  def to_s#this is overriding the usualy to_s method with this one hence puts is using this to_s
=======
    gcd(b, a%b)
  end
end


#Sebastien
class Fraction

  attr_accessor 'numerator' , 'denominator'

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end

    def to_f
      numerator / denominator.to_f
    end

    def gcd(a,b)
        if b == 0 then a else gcd( b , a%b ) end
    end

    def lowest
      divisor = gcd(numerator , denominator)
      Fraction.new(numerator/divisor , denominator/divisor)
    end

    def to_s
      "#{numerator}/#{denominator}"
    end
<<<<<<< HEAD
  
end

#================================================
#paul fitz

class Fraction

attr_accessor :numerator        #add attr_accessor so numerator and denominator can be changed
attr_accessor :denominator

  def initialize(numerator, denominator)  #initialize the object values
    @numerator = numerator
    @denominator = denominator
  end

  def lowest                              #use greatest common denominator to to nclude a method called lowest to return a new Fraction, where the numerator and denominator are reduced to lowest terms (ie 20/60 becomes 1/3)
    number = gcd(numerator, denominator)
    Fraction.new(numerator/number, denominator/number)
  end

  def to_s                            #method used to display numerator / denominator into a string
    "#{numerator}/#{denominator}"
  end

  def to_f                            #method used to divide numerator by denominator and return this as a float
    answer = numerator.to_f / denominator 
  end

    def gcd(a,b)
      return a if b == 0
      gcd(b, a%b)
    end
end
=======

end
>>>>>>> 957a49424f53cb1f9a72406f6abc7d78c4fb0057


# Tom Coakes
class Fraction
  
  attr_accessor :numerator, :denominator

  def initialize(numerator, denominator)
    @numerator = numerator
    @denominator = denominator
  end
  
  def to_s
>>>>>>> upstream/master
    "#{@numerator}/#{@denominator}"
  end

  def to_f
<<<<<<< HEAD
    @numerator.to_f / @denominator.to_f
  end

  def lowest
    gcommon = gcd(@numerator, @denominator)
    Fraction.new(@numerator / gcommon,@denominator / gcommon)
  end

end
#====================
=======
    (@numerator.to_f / @denominator.to_f)
  end

  def gcd(a,b)
    return a if b == 0
    gcd(b, a%b)
  end

  def lowest
    common = gcd(@numerator, @denominator)
    @numerator = @numerator / common
    @denominator = @denominator / common
    # Need to return a non-string version of "1/3"
    Fraction.new(@numerator, @denominator)
  end
end
>>>>>>> upstream/master
