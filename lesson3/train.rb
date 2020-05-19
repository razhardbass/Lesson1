# frozen_string_literal: true

class Train
  attr_reader :number, :type, :wagons, :speed, :current_station

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def acceleration(speed)
    self.speed += speed
  end

  def brake
    @speed = 0
  end

  def add_wagons
    @wagons += 1 if speed == 0
  end

  def delete_wagons
    @wagons -= 1 if speed.zero? && wagons > 0
  end

  def train_way(route)
    @index = 0
    @route = route
    @current_station = route.way[@index]
    route.way
  end

  def next_station
    @route.way[@index + 1]
  end

  def previous_station
    @route.way[@index - 1]
  end

  def go
    puts 'Приехали' if current_station == route.way.last
    current_station.delete_station(self)
    next_station.add_station(self)
    @index += 1
  end

  def back
    puts 'Приехали' if current_station == route.way.first
    current_station.delete_station(self)
    previous_station.add_station(self)
    @index -= 1
  end
end
