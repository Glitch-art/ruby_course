# Note: Does not work with 'F5'

puts "Simple calculator"
20.times { print "-" }
puts

def multiply(first_number, second_number)
    first_number.to_f * second_number.to_f
end

def divide(first_number, second_number)
    first_number.to_f / second_number.to_f
end

def substract(first_number, second_number)
    first_number.to_f - second_number.to_f
end

def add(first_number, second_number)
    first_number.to_f + second_number.to_f
end

def mod(first_number, second_number)
    first_number.to_f % second_number.to_f
end

puts "Please enter your first number"
first_number = gets.chomp
puts "Please enter your second number"
second_number = gets.chomp
puts "The first number multiplied by the second number is: #{multiply(first_number, second_number)}"
puts "The first number divided by the second number is: #{divide(first_number, second_number)}"
puts "The first number subtracted from the second number is: #{substract(second_number, first_number)}"
puts "The first number added to the second number is: #{add(first_number, second_number)}"
puts "The first number mod the second number is: #{mod(first_number, second_number)}"