# String concatenation
first_name = "Andrés"
last_name = "Carranza"
puts first_name + " " + last_name

# String interpolation
puts "My fist name is #{first_name} and my last name is #{last_name}"

# Methods, how to find them
p first_name.methods

# Common methods
full_name = first_name + " " + last_name

p full_name.class   # String
p 10.class          # Integer
p 10.0.class        # Float
p 10.to_s.class     # String

p full_name.length      # 15
p full_name.capitalize  # Andrés carranza
p full_name.reverse

p full_name.empty?  # false
p "".empty?         # true
p "".nil?           # false
p nil.nil?          # true

p sentence = "Welcome to the jungle"
p sentence.sub("the jungle", "utopia")

# Vatiable assignment

# Escaping methods
puts "Andrey asked \"Hey, Andres how are you?\""

