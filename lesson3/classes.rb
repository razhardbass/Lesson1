# frozen_string_literal: true

class Station
  attr_reader :train_list

  def initialize(name)
    @name = name
    @train_list = []
  end

  def add_train(name)
    train_list << name
  end

  def send_a_train(name)
    train_list.delete(name)
  end

  def train_type(type)
    train_list.select { |train| train.type == type }
  end
end

class Route
  attr_reader :way

  def initialize(first_station, last_station)
    @way = []
    @way << first_station
    @way << last_station
  end

  def add_station(name)
    way.insert(-2, name)
  end

  def delete_station(name)
    way.delete(name)
  end
end

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
    @wagons -= 1 if speed == 0
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
end
