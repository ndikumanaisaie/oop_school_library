require_relative 'app'

def display_menu
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

def select_option
end

def main
end