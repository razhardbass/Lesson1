# frozen_string_literal: true
require_relative 'instance_counter.rb'

class Route
  include InstanceCounter
  attr_reader :way

  def initialize(first_station, last_station)
    @way = [first_station, last_station]
    validate!
  end

  def add_station(name)
    way.insert(-2, name)
  end

  def delete_station(name)
    return if [way.first, way.last].include?(name)

    way.delete(name)
  end

  def to_s
    @way.join("-")
  end

  def validate!
    raise 'Маршрут не может состять из 1 станции' if way.first == way.last
    raise 'Нет созданных станций, сначала создайте станцию!'if way.empty? 
  end
end
