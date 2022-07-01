a = [ 1, 2, 3, 4, 5, 6, 7, 8, 9]
p a
p a.class       # Array
p a.first
p a.last
p a.length

puts "-" * 100
puts "*** Unshift, Append and Uniq ***"

a.unshift("Andrés") #add to first
a.append("Andrés")  #add to last
p a

# Uniq removing duplicate values in self
a.uniq
p a
a.uniq!     #apply changes permanently
p a

puts "-" * 100
puts "*** Push and Pop ***"

a.push("Ruiz")
p a
x = a.pop
puts "#{x} has deleted!"
p a

puts "-" * 100
puts "*** Empty and include ***"

p a.empty?              # false
p a.include?("Andrés")  # true
