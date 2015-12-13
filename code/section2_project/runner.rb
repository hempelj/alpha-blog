#Essentially, this is the main method

#Pretty Print styles the output
require 'pp'

#Call the user.rb in this folder
require_relative 'user'

#Call the User class and pass in the arguments
user = User.new 'jessica@example.com', 'Jessica'

#Pretty Print user
pp user

#Save the user to JSON
user.save