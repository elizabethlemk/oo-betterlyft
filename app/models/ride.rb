require 'pry'
class Ride
  attr_reader :driver, :passenger, :distance

  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def average_distance
    distances = Ride.all.map { |list| list.distance }
    distances.inject{|sum, el| sum + el}.to_f / distances.size
  end
end
