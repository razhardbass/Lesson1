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