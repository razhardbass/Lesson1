# frozen_string_literal: true

require_relative 'company_name.rb'

class PassengerWagon
  include CompanyName
  include Validation
  attr_reader :type, :number_of_places
  attr_writer :occupied_places, :free_places

  NUMBER_ERROR = 'Введите положительное число'

  def initialize(number_of_places)
    @number_of_places = number_of_places
    @occupied_places = 0
    @free_places = @number_of_places
    @type = 'passenger'
    validate!
  end

  def fill_a_place
    @occupied_places += 1
    @free_places -= 1
  end

  def validate!
    raise NUMBER_ERROR unless number_of_places.positive?
  end

  def to_s
    "#{@type} число мест: #{number_of_places}, свободно: #{@free_places}, занято: #{@occupied_places}"
  end
end
