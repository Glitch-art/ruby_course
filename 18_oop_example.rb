require 'bcrypt'

class Student
  attr_accessor :first_name, :last_name, :email, :username
  
  @first_name
  @last_name
  @email
  @username
  @password
  
  # def first_name=(name)
  #   @first_name = name
  # end
  
  # def first_name
  #   @first_name
  # end
  
  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end
  
  def to_s
    "First name: #{first_name}, Last name #{last_name}, Username: #{username}, Email: #{email}"
  end
end

student_1 = Student.new("Felipe", "Carranza", "pipe", "felipe@gmail.com", "password_1")
student_2 = Student.new("John", "Doe", "jonhny", "john@gmail.com", "password_2")

puts student_1.first_name
puts student_1

puts "-" * 80

puts student_2