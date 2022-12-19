class Person
  def initialize(name = 'unknown', age, parent_permission = true)
    @id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def id
    @id
  end

  def name
    @name
  end

  def age
    @age
  end

  def name = (name)
    @name = name
  end

  def age = (age)
    @age = age
end

person1 = Person.new("ndikumana", 34)
puts person1.name();
puts person1.age();