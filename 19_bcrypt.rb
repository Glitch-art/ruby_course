require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(hash_digest)
  BCrypt::Password.new(hash_digest)
end


p my_password = create_hash_digest("my password")

p my_password == "my password"     #=> true
p my_password == "not my password" #=> false

p my_password = verify_hash_digest("$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey")
p my_password == "my password"     #=> true
p my_password == "not my password" #=> false