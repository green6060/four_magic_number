require 'pry'
require 'humanize'

def menu
  puts "Enter a numberic value!"
  user_input
end

def user_input
  user_input = gets.to_i

  conversion (user_input)
end

def conversion (user_input)

  user_input_humanize_count = user_input.humanize.size

  while user_input_humanize_count != 4
    binding.pry
    output += user_input + " is " + user_input_humanize_count + " and "
    user_input = user_input_humanize_count
    user_input_humanize_count = user_input.humanize.size
  end

  puts output
  puts "four is the magic number"
end

menu