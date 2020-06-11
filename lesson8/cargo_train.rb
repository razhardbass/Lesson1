# frozen_string_literal: true

class CargoTrain < Train
  def initialize(number)
    super
  end

  def type
    @type = 'cargo'
  end
end
