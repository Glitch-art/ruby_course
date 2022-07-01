require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

module Crud
  require 'bcrypt'
  puts "Módulo CRUD activated"
  
  def create_hash_password(password)
    BCrypt::Password.create(password)
  end
  
  def verify_hash_password(hash_digest)
    BCrypt::Password.new(hash_digest)
  end
  
  def create_secure_users(list_of_users)
    list_of_users.each do |user|
      user[:password] = create_hash_password(user[:password])
    end
  end
  
  def authenticate_users(list_of_users, username, password)
    list_of_users.each do |user|
      if user[:username] == username && verify_hash_password(user[:password]) == password
        return user
      end
    end
    return "Usuario y/o contraseña incorrecta."
  end
end