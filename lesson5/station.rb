# frozen_string_literal: true
require_relative 'instance_counter.rb'

class Station
  extend InstanceCounter::ClassMethods
  include InstanceCounter::InstanceMethods
  attr_reader :train_list, :name

  def initialize(name)
    @name = name
    @train_list = []
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
