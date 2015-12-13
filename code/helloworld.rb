module Destructable
  def destroy(anyobject)
    puts "I will destroy any object"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    @name=name
    @email=email
  end
  def run
    puts "Hey I'm running!"
  end
end

class Friend < User
  def run
    puts "I'm not running"
  end
end

user = User.new("Jess","myname@example.com")
puts user.name
user.run

friend1=Friend.new("Sara", "sara@io.com")
friend1.run
friend1.destroy(friend1)