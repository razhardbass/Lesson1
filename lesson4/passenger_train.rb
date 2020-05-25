# frozen_string_literal: true

class PassengerTrain < Train
  def initialize(number)
    super
  end

  def type
    @type = 'passenger'
  end
end
