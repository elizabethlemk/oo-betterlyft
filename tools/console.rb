require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


today = Ride.new("Emily", "Lizzy", 2.5)
today1 = Ride.new("John", "Olive", 60)
today2 = Ride.new("Duane", "Lizzy", 2.3)
today3 = Ride.new("Duane", "Olive", 45)

lizzy = Passenger.new("Lizzy")
olive = Passenger.new("Olive")

john = Driver.new("John")
duane = Driver.new("Duane")
binding.pry
