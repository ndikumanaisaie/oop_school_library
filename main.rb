require_relative 'app'
# rubocop:disable Metrics
def main
  app = App.new

  loop do
    display_menu
    select_option(app)
  end
end

def display_menu
  puts
  puts 'Welcome to School Library App!'
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
end

def select_option(app)
  choice = gets.chomp
  puts
  puts "You selected: #{choice}"
  puts

  case choice
  when '1'
    app.list_all_books
  when '2'
    app.list_all_people
  when '3'
    app.create_a_person
  when '4'
    app.create_a_book
  when '5'
    app.create_a_rental
  when '6'
    app.list_rentals_by_person_id
  when '7'
    puts 'Thank you for using the app!'
    exit
  end
end
# rubocop:enable Metrics
main
