class Person
  attr_accessor 'name', 'age'

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def birthday
    @age += 1
  end
end

#Solved by meads
class Person
	attr_accessor 'name', 'age' #allows the object's attribute to be returned and updated.
	def initialize(name, age)#values set up when the object is first created.
		@name = name
		@age = age
	end

	def birthday
		@age = age + 1
	end
end
#===============================

#Sebastien
class Person

	attr_accessor 'name'
	attr_accessor 'age'

	def initialize(name, age)
		@name = name
		@age = age
	end

	def birthday
		@birthday = age + 1
		@age = age + 1
	end
end

#Jordan
class Person
  def initialize name, age
    @name, @age,  = name, age
  end

  attr_accessor :name, :age

  def birthday
    self.age += 1
  end
end
