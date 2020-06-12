# frozen_string_literal: true

require_relative 'instance_counter.rb'
require_relative 'validation.rb'

class Route
  include InstanceCounter
  include Validation
  attr_reader :way

  SAME_STATION_ERROR = 'Маршрут не может состять из 1 станции'

  validate :first_station, :presence
  validate :last_station, :presence

  def initialize(first_station, last_station)
    raise SAME_STATION_ERROR if way.first == way.last
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
    @way.join('-')
  end
end
