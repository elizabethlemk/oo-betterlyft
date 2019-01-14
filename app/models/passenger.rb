
class Passenger
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
    Ride.all.select {|list| list.passenger == self.name}
  end
  def drivers
    rides.map { |list| list.driver}
  end
  def total_distance
    distance = rides.map {|list| list.distance}
    distance.inject(0){|sum,x| sum + x }
  end
  def self.premium_members
    self.all.select{|list| list.total_distance > 100}.map {|list| list.name}
  end
end
