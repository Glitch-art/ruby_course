# Note: Does not work with 'F5'

puts "Enter your first name"
first_name = gets.chomp
puts "Enter your last name"
last_name = gets.chomp

# Concatenate
full_name = first_name + " " + last_name

# Print
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your name has #{full_name.length - 1} characters in it"