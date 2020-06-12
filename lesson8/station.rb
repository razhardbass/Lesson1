# frozen_string_literal: true

require_relative 'instance_counter.rb'
require_relative 'validation.rb'

class Station
  include InstanceCounter
  include Validation
  attr_reader :train_list, :name

  NAME_FORMAT = /^\w+$/i.freeze

  validate :name, :presence
  validate :name, :type, String
  validate :name, :format, NAME_FORMAT

  def initialize(name)
    @name = name
    @train_list = []
    validate!
    register_instance
  end

  def self.all
    @train_list
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

  def to_s
    @name
  end
end
