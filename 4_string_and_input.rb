# Note: Does not work with 'F5'

puts "What is your first name?"
first_name = gets.chomp
puts "Thank you, you said yours first name is #{first_name}"

puts "Enter a number to multiply by 2"
input = gets.chomp
puts input.to_i * 2