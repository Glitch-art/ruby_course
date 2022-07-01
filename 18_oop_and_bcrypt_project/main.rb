require_relative 'crud'

users = [
    {username: "Felipe",    password: "password1"},
    {username: "Juan",      password: "password2"},
    {username: "Andrea",    password: "password3"},
    {username: "Julieta",    password: "password4"},
    {username: "Jack",    password: "password5"}
]

# Encrypt passwords
hashed_users = Crud.create_secure_users(users)

print "Username: "
username = gets.chomp
print "Password: "
password = gets.chomp

puts Crud.authenticate_users(hashed_users, username, password)
