require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

users = [
    {username: "Felipe",    password: "password1"},
    {username: "Juan",      password: "password2"},
    {username: "Andrea",    password: "password3"},
    {username: "Julieta",    password: "password4"},
    {username: "Jack",    password: "password5"}
]

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(hash_digest)
  BCrypt::Password.new(hash_digest)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user|
    user[:password] = create_hash_digest(user[:password])
  end
end

def authenticate_users(list_of_users, username, password)
  list_of_users.each do |user|
    if user[:username] == username && verify_hash_digest(user[:password]) == password
      return user
    end
  end
  return "Usuario y/o contraseña incorrecta."
end


# Encrypt passwords
create_secure_users(users)

print "Username: "
username = gets.chomp
print "Password: "
password = gets.chomp

puts authenticate_users(users, username, password)