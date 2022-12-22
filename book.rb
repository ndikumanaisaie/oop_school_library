require_relative 'rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    new_rental = Rental.new(date, self, person)
    @rentals.push(new_rental)
  end
end
