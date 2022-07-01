a = [ 1, 2, 3, 4, 5, 6, 7, 8, 9]
p a

puts "-" * 100
puts "*** Join and Split ***"

puts "** Join **"
b = a.join("-")
p b
p b.class

puts "** Split **"
c = b.split("-")
p c
p c.class

puts "-" * 100
puts "*** Shuffle ***"

c = 1..20
p c
p c.class      # Range
p c.to_a
p c.to_a.shuffle    # Shuffle randomly
p c.to_a

puts "-" * 100
puts "*** Shuffle! ***"

# Shuffle! Save the changes
p a
a.shuffle!
p a