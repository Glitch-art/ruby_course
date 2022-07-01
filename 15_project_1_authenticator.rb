users = [
    {username: "Felipe",    password: "password1"},
    {username: "Juan",      password: "password2"},
    {username: "Andrea",    password: "password3"},
    {username: "Julieta",    password: "password4"},
    {username: "Jack",    password: "password5"}
]

puts "Bienvenido al autenticador"
35.times { print "-"}
puts ""
puts "Este programa leerá la contraseña digitada por el usuario y la comparará."
puts "Si la contraseña es correcta, devolverá el objeto del usuario."

attempts = 0
successful_authentication = false
while attempts < 4      # Max 4 attempts
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    
    # Compare Passwords
    users.each do |user|
        if user[:username] == username && user[:password] == password
            successful_authentication = true
            puts user   # Print user's object
            break       # Break "users.each do"
        end
    end
    
    if successful_authentication
       break        # Break While
    end
    puts "Usuario y/o contraseña incorrecta."
    
    attempts += 1       # Add one attempt
    
    print "Presione n para salir, o cualquier otra tecla para continuar: "
    input = gets.chomp.downcase
    break if input == "n"
end

puts "Programa Terminado."