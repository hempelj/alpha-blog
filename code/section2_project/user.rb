#This defines classes the class used in runner.rb

require 'json'

class User
  
  #Define required initialization fields
  attr_accessor :email, :name, :permissions
  
  def initialize(*args)
    @email = args[0]
    @name = args[1]
    @permissions = User.permissions_from_template
  end

  #Read from JSON file called permissions_from_template
  def self.permissions_from_template
    file = File.read 'user_permissions_template.json'
    JSON.load(file, nil, symbolize_names: true)
  end
  
  #Save to new JSON file called users.json
  def save
    self_json = {email: @email, name: @name, permissions: @permissions}.to_json
    #'a' stands for append
    open('users.json','a') do |file|
      #Write to file
      file.puts self_json
    end
  end
end