class Person
  attr_accessor :name, :age
  attr_reader :id
  def initialize(age, name = 'Unknown', parent_permission = true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def is_of_age?
    @age >= 18
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  private :is_of_age?
end

person1 = Person.new(34, "ndikumana")

puts person1.name();