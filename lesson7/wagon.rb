
require_relative 'company_name.rb'
require_relative 'validation.rb'

class Wagon
  include CompanyName
  include Validation
  attr_reader :type, :all_volume , :occupied_volume, :free_volume

  NUMBER_ERROR = 'Введите положительное число'
  MAX_VALUE_ERROR = 'Вагон заполнен!'

  def initialize(all)
    @all = all
    @occupied = 0
    validate!
  end

  def fill(received_value)
    raise MAX_VALUE_ERROR if received_value > free

    @occupied += received_value
  end

  def free
    @all - @occupied
  end

  def validate!
    raise NUMBER_ERROR unless @all.positive?
  end

end
