
a = %w(Hello my name is Andrés and Ruby is amazing)
p a

puts "-" * 100
puts "*** Iterator ***"

a.each {|word| print "#{word} "}

puts ""

a.each do |word|
    # Block logic
    print "#{word.capitalize} "
end
puts ""

puts "-" * 100
puts "*** Select ***"

z = (1..100).to_a.shuffle
p z.select {|number| number.even?}  # Select only evens (pares).

