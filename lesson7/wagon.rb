
require_relative 'company_name.rb'
require_relative 'validation.rb'

class Wagon
  include CompanyName
  include Validation
  attr_reader :type, :capacity, :ocupied_capacity

  NUMBER_ERROR = 'Введите положительное число'
  MAX_VALUE_ERROR = 'Вагон заполнен!'

  def initialize(capacity)
    @capacity = capacity 
    @occupied_capacity = 0
    validate!
  end

  def available_capacity(received_value)
    raise MAX_VALUE_ERROR if received_value > free

    @occupied_capacity += received_value
  end

  def free
    @capacity - @occupied_capacity
  end

  def validate!
    raise NUMBER_ERROR unless @capacity.positive?
  end

end
