require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'classroom'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    @class = Classroom.new('Grade 5')
  end

  def list_all_books
    puts 'There are no books yet! Please add books.' if @books.empty?
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}" }
    sleep 0.75
  end

  def list_all_people
    puts 'There are no people yet! Please add a student or teacher.' if @people.empty?
    @people.map { |person| puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}" }
    sleep 0.75
  end

  def create_a_person
    puts 'Do you want to create a student (1) or teacher (2) [Input a number]: '
    option = gets.chomp

    case option
    when '1'
      create_a_student
    when '2'
      create_a_teacher
    else
      puts 'Invalid input. Please type 1 or 2'
    end
  end

  def create_a_student
    puts 'Age: '
    age = gets.chomp.to_i

    puts 'Name: '
    name = gets.chomp

    puts 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase

    student = Student.new(@class, age, name, parent_permission)
    @people << student

    puts 'Student created successfully'
    sleep 0.75
  end

  def create_a_teacher
    puts 'Age: '
    age = gets.chomp.to_i

    puts 'Name: '
    name = gets.chomp

    puts 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(specialization, age, name)
    @people << teacher

    puts 'Teacher created successfully'
    sleep 0.75
  end

  def create_a_book
    puts 'Title: '
    title = gets.chomp

    puts 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books << book

    puts 'Book added successfully'
    sleep 0.75
  end

  def create_a_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index { |book, index| puts "#{index}) Title: #{book.title}, Author: #{book.author}" }
  
    book_id = gets.chomp.to_i
  
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  
    person_id = gets.chomp.to_i
  
    puts 'Date: '
    date = gets.chomp.to_s
  
    rental = Rental.new(date, @people[person_id], @books[book_id])
    @rentals << rental
  
    puts 'Rental created successfully'
    sleep 0.75
  end

  def list_rentals_by_person_id
    puts 'ID of person: '
    id = gets.chomp.to_i
  
    puts 'Rentals:'
    @rentals.each do |rental|
      puts "Date: #{rental.date}, Book '#{rental.book.title}' by #{rental.book.author}" if rental.person.id == id
    end
    sleep 0.75
  end
end