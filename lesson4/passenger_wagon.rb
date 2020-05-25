# frozen_string_literal: true

class PassengerWagon
  attr_reader :type
  def initialize
    @type = 'passenger'
  end

  def to_s
    @type
  end
end
