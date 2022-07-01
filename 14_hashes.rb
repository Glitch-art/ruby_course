puts "*** Hashes ***"

my_details = {'name' => 'Felipe', 'favorite_color' => 'red', 'age' => 20}
p my_details['age']

# With simbols
another_hash = {a: 1, b: 2,c: 3}
p another_hash[:b]
p another_hash.keys
p another_hash.values

another_hash.each do |key, value| 
    print "key: #{key}    value: #{value}\n"
end

puts "-" * 40
puts "*** Add key and value ***"

another_hash[:e] = 'Felipe'
p another_hash

puts "-" * 40
puts "*** Change value ***"

p another_hash
another_hash[:e] = 'Carranza'
p another_hash

puts "-" * 40
puts "*** Select value ***"

p another_hash
puts "Hash a select form: #{another_hash.select{|key, value| value.is_a?(String)}}"

puts "-" * 40
puts "*** Delete key ***"

p another_hash
another_hash.each {|key, value| another_hash.delete(key) if value.is_a?(String)}
p another_hash