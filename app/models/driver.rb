
class Driver
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  def rides
    Ride.all.select {|list| list.driver == self.name}
  end
  def passenger_names
    rides.map {|list| list.passenger}
  end
  def self.mileage_cap(distances)
    Ride.all.select {|list| list.distance >= distances}
  end
end
