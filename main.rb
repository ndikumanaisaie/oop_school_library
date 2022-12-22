require_relative 'app'

def main
  app = App.new
  choose = nil

  puts 'Welcome to School Library App!'
  puts

  while choose != '7'
    puts
    puts 'Please choose an option by entering a number: '
    options = [
      '1 - List all books',
      '2 - List all people',
      '3 - Create a person',
      '4 - Create a book',
      '5 - Create a rental',
      '6 - List all rentals for a given person id',
      '7 - Exit'
    ]
    puts options

    choose = gets.chomp
    puts "Selected: #{choose}"

    case choose
    when '1'
      app.books_list
      puts 'first choice'
    when '2'
      app.person_list
    when '3'
      app.create_person
    when '4'
      app.book_data
    when '5'
      app.create_rental
    when '6'
      app.rentals_list
    when '7'
      puts 'Thank you for using this app!'
      exit
    end
  end
end

main